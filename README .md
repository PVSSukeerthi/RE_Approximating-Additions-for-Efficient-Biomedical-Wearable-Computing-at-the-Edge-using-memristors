# Approximating Additions for Efficient Biomedical Wearable Computing at the Edge using memristors

This project showcases the complete pipeline for designing and simulating an **Approximate Adder** using memristor-based logic gates. The process begins with an RTL Verilog implementation, proceeds through synthesis using Yosys and ABC, and finally results in a SPICE netlist ready for simulation in tools like LTspice.

---

## Tools Used

- **Yosys** – Open-source RTL synthesis tool.
- **ABC** – Logic synthesis and technology mapping tool used by Yosys.
- **Python** – To parse and convert the synthesized Verilog netlist to SPICE format.
- **LTspice / Ngspice** – For SPICE-based simulation using memristor logic.
- **Liberty File (`simple.lib`)** – Custom standard cell library for synthesis using logic gates.

---

## Project Directory Structure

```bash
├── approx_adder.v              # RTL code of the approximate adder
├── simple.lib                  # Liberty file with logic gate definitions
├── synth.ys                    # Yosys synthesis script
├── gate_level_netlist.v        # Synthesized gate-level Verilog netlist
├── netlist_to_spice.py         # Python script to convert Verilog to SPICE
├── memristor_cells.sp          # SPICE subcircuits for memristor logic gates
├── approx_adder_memristor.sp   # Final SPICE netlist ready for simulation
├── LICENSE                     # License file
└── README.md                   # This file
```

---

## 1. What is Yosys?

[Yosys](https://github.com/YosysHQ/yosys) is an open-source tool used for RTL synthesis. It supports Verilog and can convert high-level designs into gate-level netlists. Yosys can be paired with `abc` for technology mapping to custom standard cells defined in Liberty format.

---

## 2. Installing Yosys

### Option 1: Install via Package Manager (Linux)

```bash
sudo apt update
sudo apt install yosys
```

After installation, check:

```bash
yosys -V
```

---

## 3. Synthesizing the Approximate Adder

Make sure the RTL Verilog file `add16se_2E1.v` and Liberty file `simple.lib` are available.

### Yosys Synthesis Script (`synth.ys`)

```tcl
read_verilog approx_adder.v
synth -top approx_adder
abc -liberty simple.lib
write_verilog gate_level_netlist.v
```

### Run the Script:

```bash
yosys synth.ys
```

This will generate a **gate-level netlist** named `gate_level_netlist.v`, mapped to gates from `simple.lib`.

---

## 4. Convert Verilog Netlist to SPICE using Python

Use the provided `netlist_to_spice.py` script to convert your gate-level Verilog netlist into a SPICE netlist that uses memristor logic.

### Example Usage:

```bash
python3 vtosp.py 
```

### What It Does:

- Parses `gate_level_netlist.v`
- Replaces logic gates (e.g., `and`, `or`, `xor`, `not`) with SPICE subcircuit calls (`XU...`)
- Appends `.include memristor_cells.sp` for gate definitions
- Outputs `.sp`

> **Note**: Ensure `memristor_cells.sp` includes `.subckt` definitions for all used logic gates.

---

## 5. Simulate in LTspice or Ngspice

### Using LTspice:

1. Open `add16se_2E1.v.sp`
2. Add `.tran` and voltage sources if not already present
3. Run simulation and view waveforms

---

## 6. Memristor Gate Models

All logic gates are implemented using **memristor-based circuits**, and defined as `.subckt` in `add16se_2E1.v.sp`. Example:

All the memristor based circuits are present in memristor_gates.lib and its need to be included in the sp file
Add other simulation commands for calculating power and area
.sp file can now be dirctly simulated in LTspice and get the outputs.
