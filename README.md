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

---
## The simulation is done in Xilinx Vivado software

## Simulation screenshot images and schematic diagram files are tagged below:

### 1] Dynamic Priority Encoder

Simulation: ![Screenshot 2025-07-09 233624](https://github.com/user-attachments/assets/3f8b17b5-bb40-48c8-90e4-757280694da7)

Schematic: https://drive.google.com/file/d/13DfVXcL32OI55JfCqWvVCI6K4i2wYEJP/view?usp=drive_link

### 2] 8-bit Logical Barrel Shifter

Simulation:![Screenshot 2025-07-09 235117](https://github.com/user-attachments/assets/e19699b2-71ed-469c-87d7-798d95b4a132)

Schematic:![Screenshot 2025-07-09 235323](https://github.com/user-attachments/assets/93036c18-4d36-4217-85b6-ba5e16039615)

---

## 💡 How to Extend
- Add support for additional barrel shifter modes (e.g., arithmetic shift, rotate)
- Parameterize input widths (e.g., 16-bit or 32-bit encoders and shifters)
- Integrate with larger data routing or processing modules

---

## 🧑‍💻 Author
Dayanand Bisanal

---

The simulation is done in Xilinx Vivado software

Simulation screenshot images and schematic diagram files are tagged below:

1] Dynamic Priority Encoder

Simulation: ![Screenshot 2025-07-09 233624](https://github.com/user-attachments/assets/3f8b17b5-bb40-48c8-90e4-757280694da7)

Schematic: https://drive.google.com/file/d/13DfVXcL32OI55JfCqWvVCI6K4i2wYEJP/view?usp=drive_link

2] 8-bit Logical Barrel Shifter

Simulation:![Screenshot 2025-07-09 235117](https://github.com/user-attachments/assets/e19699b2-71ed-469c-87d7-798d95b4a132)

Schematic:![Screenshot 2025-07-09 235323](https://github.com/user-attachments/assets/93036c18-4d36-4217-85b6-ba5e16039615)

