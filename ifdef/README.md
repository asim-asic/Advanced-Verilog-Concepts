# Selective AND Gate using Compiler Directives

![License](https://img.shields.io/badge/license-MIT-green)
![Language](https://img.shields.io/badge/language-Verilog-blue)
![Platform](https://img.shields.io/badge/platform-ASIC-orange)
---

## Overview
This project demonstrates the use of compiler directives (`ifdef, `else, `endif)
in Verilog to select between behavioral and gate-level implementations.

---

## Key Concept: Compiler Directives
The design uses compiler directives to conditionally compile code:

- `behavioral defined → Behavioral modeling (assign statement)
- Not defined → Gate-level modeling (primitive instantiation)

This selection happens **at compile time**, not during simulation.

## Working
- If compiled with `-Dbehavioral`:
  - Uses `assign f = a & b;`
- Else:
  - Uses gate-level: `and a1 (f, a, b);`

---

## Files
- `selective_and.v` → Design module  
- `tb_selective_and.v` → Testbench  
- `output.txt` → Simulation output  
- `README.md` → Documentation  

---

## Important Notes
- Compiler directives are processed before compilation
- No runtime overhead (pure compile-time decision)
- Useful for switching between abstraction levels

---

## License
This project is licensed under the MIT License.

© 2026 Asim Khan (asim-asic)
