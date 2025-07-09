# verilog-dynamic-priority-encoder-barrel-shifter
# Verilog Combinational Logic Modules: Dynamic Priority Encoder and Barrel Shifter

## 📋 Overview
This repository contains Verilog implementations and testbenches for:
- **Dynamic Priority Encoder** (8-bit, with configurable priority)
- **8-bit Logical Barrel Shifter**

These modules are designed to practice efficient combinational logic design and LUT optimization in embedded systems.

---

## 📂 Files and Descriptions

| File                          | Description                                                                                          |
|-------------------------------|------------------------------------------------------------------------------------------------------|
| `dynamic_priority_encoder.v`  | Verilog module implementing an 8-bit dynamic priority encoder with configurable priority pointer.   |
| `tb_dynamic_priority_encoder.v` | Testbench for verifying the dynamic priority encoder module with various input vectors and priorities. |
| `barrel_shifter.v`            | Verilog module implementing an 8-bit logical barrel shifter supporting left and right shifts.      |
| `tb_barrel_shifter.v`         | Testbench for verifying the barrel shifter with multiple shift amounts and directions.              |

---

## ⚙️ Features

### ✅ Dynamic Priority Encoder
- 8 input request signals (`in[7:0]`)
- 3-bit priority pointer (`priority[2:0]`) to dynamically define the highest-priority input
- Outputs the granted index (`grant[2:0]`) and validity flag (`valid`)

### ✅ 8-bit Logical Barrel Shifter
- Supports logical left and right shifts
- Shift amount specified via `shift[2:0]`
- Direction control (`dir`):  
  - `0`: Shift left  
  - `1`: Shift right

---

## 🧪 Simulation
All testbenches were written to:
- Verify correct logic operation
- Check edge cases (e.g., no active inputs, maximum shift amounts)
- Display results via `$monitor`

Example simulation commands with Icarus Verilog:
