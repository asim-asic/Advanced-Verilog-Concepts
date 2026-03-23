# 2x1 MUX using Verilog User Define Primitives (UDPs)

![License](https://img.shields.io/badge/license-MIT-green)
![Language](https://img.shields.io/badge/language-Verilog-blue)
![Platform](https://img.shields.io/badge/platform-ASIC-orange)

---

## Description
Implementation of a **2x1 Multiplexer using Verilog User Defined Primitive (UDP)**.  
Demonstrates low-level modeling using truth tables and handling of unknown (`X`) states.

---

## Key Learning
- User Defined Primitives (UDP)  
- Truth table based design  
- X-state behavior handling  
- Difference between UDP and module modeling  

---

## Files
- `mux_2x1.v` → UDP design  
- `tb_mux_2x1.v` → Testbench  
- `output.txt` → Simulation output  
- `README.md` → Documentation  

---

## Test Coverage
- Functional cases (a=0 → I0, a=1 → I1)  
- Unknown select condition (a = X)  
- All key input combinations covered  

---

## Important Note
UDP supports only:
- Single output  
- Scalar signals  
- Table-based behavior  

Used mainly for **low-level modeling and simulation**, not for complex RTL design.

---

## License
This project is licensed under the MIT License.

© 2026 Asim Khan (asim-asic)
