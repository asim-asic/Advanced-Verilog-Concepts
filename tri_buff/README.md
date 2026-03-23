# Tri-State Buffer in Verilog

![License](https://img.shields.io/badge/license-MIT-green)
![Language](https://img.shields.io/badge/language-Verilog-blue)
![Platform](https://img.shields.io/badge/platform-ASIC-orange)

---

## Description
This project demonstrates the implementation of a **Tri-State Buffer** in Verilog, where multiple drivers share a common output line. The design models real hardware behavior using Verilog’s **4-valued logic system (0, 1, X, Z)**.

The output is resolved based on active drivers, enabling understanding of **bus contention and high-impedance states**.

---

## Key Learning
- Understanding of **tri-state buffers and shared buses**  
- Concept of **high impedance (Z)** and **unknown state (X)**  
- Multi-driver signal resolution in Verilog  
- Writing efficient **testbench using loops**  
- Debugging and analyzing **bus conflicts**  

---

## Concept Used
- Tri-state logic (`1'bz`)  
- Conditional operator (`?:`)  
- Multiple continuous assignments  
- 4-valued logic system  
- Exhaustive verification using loops  

---

## Project Structure
```
tristate-buffer-verilog/
│
├── tristate_buff.v        # RTL design
├── tb_tristate_buff.v     # Testbench
├── output.txt             # Output
└── README.md		   # Documentation
```

---

## Test Coverage
- All combinations of inputs (a, b, c, d)  
- Total Test Cases = **16**  

✔ Covers:
- No driver (Z state)  
- Single driver active  
- Multiple drivers with same value  
- Multiple drivers with conflict (X state)  

---

## Output Behavior

| Condition              | Output |
|----------------------|--------|
| No driver active     | Z      |
| One driver active    | Driven value |
| Both same values     | Valid (0/1) |
| Conflict (0 vs 1)    | X      |

---

## Output Example
```
a b c d | f
------------
0 0 0 0 | z
1 1 0 1 | x
1 0 1 1 | 1
```

---

## Learning Outcome
- Clear understanding of **bus sharing and contention**  
- Practical knowledge of **Verilog resolution logic**  
- Strong foundation for **RTL debugging and verification**  
- Insight into **real-world hardware behavior modeling**  

---

## Important Note
Tri-state buffers are mainly used at **IO level** in modern ASIC design.  
Internal designs typically use **multiplexers instead of tri-state logic**.

---

## License

This project is licensed under the MIT License.

© 2026 Asim Khan (asim-asic)
