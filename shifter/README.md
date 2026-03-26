# Shift Register (Parameterized using Generate)

![License](https://img.shields.io/badge/license-MIT-green)
![Language](https://img.shields.io/badge/language-Verilog-blue)
![Platform](https://img.shields.io/badge/platform-ASIC-orange)

---

## Overview
This project implements a parameterized shift register in Verilog using a **conditional generate block**.  
It demonstrates how design behavior can be configured at compile time using parameters.

---

## Key Concept: Generate Block
The design uses a `generate` construct to select shift direction based on a parameter:

- `Left_shift = 1` → Left shift operation
- `Left_shift = 0` → Right shift operation

This selection happens **at compile time**, making the design flexible and reusable without modifying core logic.

---

## Features
- Parameterized width (`N`)
- Conditional hardware generation using `generate`
- Supports parallel load and shift operations
- Clean and synthesizable RTL design

---

## Working
- On each **posedge clk**:
  - If `load = 1` → Loads input data into register
  - Else if `shift_enable = 1` → Performs shift operation (based on parameter)
  - Else → Holds previous value

---

## Files
- `shift_reg.v` → RTL design (with generate block)
- `tb_shift_reg.v` → Testbench
- `output.txt` → Simulation output

---

## Important Notes
- Shift direction is controlled using a parameter (not runtime signal)
- Generate blocks are evaluated at compile time
- Proper clock initialization is required for correct simulation

---

## License
This project is licensed under the MIT License.

© 2026 Asim Khan (asim-asic)
