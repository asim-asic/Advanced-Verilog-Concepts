# Parity Generator using Function – Verilog

![License](https://img.shields.io/badge/license-MIT-green)
![Language](https://img.shields.io/badge/language-Verilog-blue)
![Platform](https://img.shields.io/badge/platform-ASIC-orange)

---

## Description
Implements a **4-bit Even Parity Generator** using a Verilog **function**. The output is 5-bit where the last bit ensures total number of 1’s is even.

---

## Key Learning
- Function = **combinational, zero delay**
- Returns **single output**
- Must be **inside module**
- No `#delay` allowed
- Useful for reusable logic

---

## Logic
- Even 1’s → parity = 0  
- Odd 1’s → parity = 1  

```verilog
parity = {A, ^A};
```

## License

This project is licensed under the MIT License.

© 2026 Asim Khan (asim-asic)
