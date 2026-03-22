# 4-bit Adder using Verilog

![License](https://img.shields.io/badge/license-MIT-green)
![Language](https://img.shields.io/badge/language-Verilog-blue)
![Platform](https://img.shields.io/badge/platform-ASIC-orange)

---

## Description
This project demonstrates the design and verification of a 4-bit adder using Verilog. The design performs binary addition of two 4-bit inputs along with a carry-in, producing a 4-bit sum and a carry-out.

The verification is done using an exhaustive testbench, ensuring correctness across all possible input combinations.

---

## Key Learning
- Use of tasks in Verilog for modular coding  
- Implementation of bitwise addition logic (Full Adder concept)  
- Writing efficient testbenches using nested loops  
- Concept of exhaustive verification (512 test cases)  
- Debugging unknown (X) states in simulation  

---

## Concept Used
- Verilog Tasks  
- For loops (testbench automation)  
- Blocking assignments  
- Bitwise operations  
- Carry propagation logic  

---

## Project Structure
```
adder/
│
├── add_vector.v
├── test_adder.v
├── wave.vcd
└── README.md
```

---

## Test Coverage
- A → 0 to 15  
- B → 0 to 15  
- Cin → 0 or 1  

Total Test Cases = 16 × 16 × 2 = 512  

✔ Full coverage achieved  

---

## Output Example
```
A=5 B=3 Cin=0 -> Sum=8 Cout=0
A=15 B=15 Cin=1 -> Sum=15 Cout=1
```

---

## Learning Outcome
- Strong understanding of RTL design fundamentals  
- Ability to write scalable and reusable testbenches  
- Practical exposure to simulation and debugging  
- Foundation for advanced verification (SystemVerilog/UVM)  

---

## License

This project is licensed under the MIT License.

© 2026 Asim Khan (asim-asic)
