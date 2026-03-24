# 4-bit Ripple Carry Adder using Generate

![License](https://img.shields.io/badge/license-MIT-green)
![Language](https://img.shields.io/badge/language-Verilog-blue)
![Concept](https://img.shields.io/badge/concept-Generate-orange)

---

## Description
This project implements a **4-bit Ripple Carry Adder** using a **generate block** in Verilog.  
Instead of manually instantiating full adders, the design uses a loop to create scalable hardware.

---

## Design Overview
- Built using **Full Adder module**
- Carry propagated using internal wire
- Generate block used for **hardware replication**
- Fully combinational design

---

## Key Concepts
- Generate block (`generate`)
- genvar usage
- Ripple Carry Adder
- Structural modeling
- Compile-time hardware generation

---

## Files
- `full_adder.v` → 1-bit full adder  
- `adder4.v` → 4-bit adder using generate  
- `tb_adder4.v` → Testbench with full coverage  
- `output.txt` → Simulation results  
- `README.md` → Documentation  

---

## Verification
- Tested with **all input combinations**
- Total test cases: **512 (16×16×2)**
- Verified using nested loops in testbench

---

## Output
Simulation results stored in:
```
output.txt
```

---

## Important Note
Generate blocks create hardware at **compile time**, not during simulation.  
This approach improves scalability and avoids manual instantiation.

---

## License
This project is licensed under the MIT License.

© 2026 Asim Khan (asim-asic)
