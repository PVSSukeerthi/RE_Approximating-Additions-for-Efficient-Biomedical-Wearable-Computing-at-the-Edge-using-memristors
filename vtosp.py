import re

verilog_file = "gate_level_netlist.v"
output_spice_file = "memristor_netlist_final.sp"

# Mapping gate types to your memristor gate names
gate_mapping = {
    'XOR2': 'XOR2',
    'OR2': 'OR2',
    'AND2': 'AND2',  # assuming .subckt 2 is the AND
    'NOT1': 'NOT'
}

spice_lines = []
spice_lines.append(".include memristor_gates.lib\n\n")
spice_lines.append("* Voltage source\n")
spice_lines.append("VDD Vcc 0 DC 1.8\n\n")
spice_lines.append("* Gate instantiations\n")

inputs_set = set()
output_wires = []

with open(verilog_file, "r") as f:
    lines = f.readlines()

inside_instance = False
instance_lines = []

for line in lines:
    line = line.strip()
    if not line or line.startswith("//") or line.startswith("module") or line.startswith("endmodule"):
        continue

    if any(line.startswith(gate) for gate in gate_mapping):
        inside_instance = True
        instance_lines = [line]
        if line.endswith(");"):
            inside_instance = False
    elif inside_instance:
        instance_lines.append(line)
        if line.endswith(");"):
            inside_instance = False
        else:
            continue
    else:
        continue

    instance_str = " ".join(instance_lines)
    match = re.match(r'(\w+)\s+(\w+)\s*\((.*?)\);', instance_str.replace("\n", "").replace("\r", ""), re.DOTALL)
    if not match:
        continue

    gate_type, instance_name, ports_blob = match.groups()
    ports = dict(re.findall(r'\.(\w+)\(([^)]+)\)', ports_blob))

    if gate_type not in gate_mapping:
        print(f"Warning: Unsupported gate type '{gate_type}' in instance {instance_name}. Skipping.")
        continue

    # Format the gate instance
    gate_subckt = gate_mapping[gate_type]
    if gate_type == 'NOT':
        if 'A' in ports and 'Y' in ports:
            A, Y = ports['A'], ports['Y']
            spice_lines.append(f"X{instance_name} {A} {Y} Vcc {gate_subckt}\n")
            inputs_set.add(A)
            output_wires.append(Y)
    else:
        if all(k in ports for k in ['A', 'B', 'Y']):
            A, B, Y = ports['A'], ports['B'], ports['Y']
            spice_lines.append(f"X{instance_name} {A} {B} {Y} Vcc {gate_subckt}\n")
            inputs_set.update([A, B])
            output_wires.append(Y)

# Add dummy voltage sources for input wires
spice_lines.append("\n* Input signals\n")
for i, inp in enumerate(sorted(inputs_set)):
    spice_lines.append(f"V{inp} {inp} 0 PULSE(0 1.8 0n 1n 1n 50n 100n)\n")

# Simulation commands
spice_lines.append("\n* Simulation\n")
spice_lines.append(".tran 1n 200n\n")
spice_lines.append(".control\n")
spice_lines.append("run\n")

# Plot last few output signals
for signal in output_wires[-5:]:
    spice_lines.append(f"plot V({signal})\n")

spice_lines.append(".endc\n")
spice_lines.append(".end\n")

# Write the .sp file
with open(output_spice_file, "w") as f:
    f.writelines(spice_lines)

print(f"SPICE netlist written to {output_spice_file}")

