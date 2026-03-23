# Tri-State Buffer using Verilog Built-in Primitives

![License](https://img.shields.io/badge/license-MIT-green)
![Language](https://img.shields.io/badge/language-Verilog-blue)
![Platform](https://img.shields.io/badge/platform-ASIC-orange)

---

## Description
Implementation of a **Tri-State Buffer using Verilog primitives (`bufif1`)**.  
Demonstrates low-level modeling and multi-driver signal behavior.

---

## Key Learning
- Verilog primitives (bufif1)  
- Tri-state logic (Z state)  
- Bus contention (X condition)  
- Gate-level modeling  

---

## Files
- `tri_buffer.v` → Design  
- `tb_tristate_buff.v` → Testbench  
- `output.txt` → Simulation output  
- `README.md` → Documentation 
---

## Test Coverage
- All input combinations (16 cases)  
- Z, valid output, and contention (X) covered  

---

## Important Note
Tri-state buffers are mainly used at IO level in modern ASIC design.  
Internal designs typically use multiplexers instead of tri-state logic.

---

## License
This project is licensed under the MIT License.

© 2026 Asim Khan (asim-asic)
