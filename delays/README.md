# Rise and Fall Delay Modeling (Verilog)

![License](https://img.shields.io/badge/license-MIT-green)
![Language](https://img.shields.io/badge/language-Verilog-blue)
![Platform](https://img.shields.io/badge/platform-ASIC-orange)

---

## Overview
This project demonstrates modeling of **rise and fall delays** in Verilog using parameters.  
It shows how output delay depends on transition type and load.

---

## Concept
- Rise delay → output transition from `0 → 1`
- Fall delay → output transition from `1 → 0`
- Delay depends on:
  - Transition type
  - Load on the gate

---

## Key Points
- Rise and fall delays are different
- Modeled using `#(delay)` in simulation
- Load affects propagation delay
- Parameters allow flexible delay modeling

---

## Files
- `NAND2.v` → RTL with rise/fall delay modeling  
- `tb_NAND2.v` → Testbench  
- `output.txt` → Simulation output  
- `README.md` → Documentation  

---

## Important Notes
- Delay modeling is **not synthesizable**
- Used only for simulation and timing understanding
- Helps in understanding real hardware behavior

---

## License
This project is licensed under the MIT License.

© 2026 Asim Khan (asim-asic)
