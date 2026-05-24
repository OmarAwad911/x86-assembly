<div align="center">

<img src="https://img.shields.io/badge/Assembly-x86-red?style=for-the-badge&logo=assemblyscript&logoColor=white"/>
<img src="https://img.shields.io/badge/Platform-DOS%2FEMU8086-blue?style=for-the-badge"/>
<img src="https://img.shields.io/badge/Course-Microprocessor%20Lab-green?style=for-the-badge"/>
<img src="https://img.shields.io/badge/University-October%206%20University-orange?style=for-the-badge"/>

# 🖥️ x86 Assembly — Microprocessor Lab

**A collection of x86 Assembly programs written for the Microprocessor Lab course**  
*October 6 University — Electronics & Communications Engineering*

</div>

---

## 📁 Repository Structure

```
x86-assembly-lab/
│
├── Basics/
│   ├── Registar_copy.asm       # Register-to-register data movement
│   ├── Jump_If_else.asm        # Conditional branching (JG, JMP)
│   └── Operating.asm           # Arithmetic operations (ADD, SUB, MUL, DIV)
│
├── I-O/
│   ├── Print_String.asm        # Print a string to console (INT 21H / AH=09H)
│   ├── Read_two_digite.asm     # Read a 2-digit number from keyboard
│   └── Read_num_by2.asm        # Read a number and multiply it by 2
│
└── Algorithms/
    ├── Sum_array.asm           # Sum all elements of a byte array
    ├── Max_or_min_inArray.asm  # Find minimum value in an array
    ├── Linear_Search.asm       # Linear search with FOUND/NOT FOUND output
    ├── Bubble_Sort.asm         # Bubble sort (ascending order)
    └── SORT_Print.asm          # Bubble sort + print array before & after
```

---

## 🔬 Programs Overview

### 🟦 Basics

| File | Description |
|------|-------------|
| `Registar_copy.asm` | Demonstrates moving data between registers (AX → BL, CH, DH). Includes the important rule: **never do `MOV DS, immediate`** — always go through AX. |
| `Jump_If_else.asm` | Simulates an `if/else` block using `CMP` + `JG`. Loads BX=1 if condition is true, BX=2 otherwise. |
| `Operating.asm` | Covers all four arithmetic operations: `ADD`, `SUB`, `MUL`, `DIV`. Includes a compound expression: `(8×9) − 12`. |

---

### 🟩 I/O (Input / Output)

| File | Description |
|------|-------------|
| `Print_String.asm` | Prints `HELLO!` using DOS interrupt `INT 21H` with `AH=09H`. Terminates with `AH=4CH`. |
| `Read_two_digite.asm` | Reads two single-digit characters from keyboard, converts them to a real 2-digit number (e.g. `'4'` + `'2'` → 42). |
| `Read_num_by2.asm` | Reads a single digit, multiplies it by 2, and prints the result using `INT 21H / AH=02H`. |

---

### 🟥 Algorithms

| File | Description |
|------|-------------|
| `Sum_array.asm` | Iterates over a byte array `{10,20,30,40,50}` using a loop and accumulates the sum in AX. Result = 150. |
| `Max_or_min_inArray.asm` | Scans array `{20,80,70,100,25}` and finds the **minimum** value using `JAE` (Jump if Above or Equal). |
| `Linear_Search.asm` | Searches for a target value (8) in an array. Prints `"FOUND"` or `"NOT FOUND"` via DOS interrupt. |
| `Bubble_Sort.asm` | Classic bubble sort using nested loops (`OUT_LOOP` / `IN_LOOP`). Swaps adjacent elements using `JBE`. |
| `SORT_Print.asm` | Full bubble sort with console output — prints the array **before** and **after** sorting using a `PRINT_ARRAY` procedure. |

---

## 🛠️ How to Run

These programs are written for the **x86 16-bit DOS environment**.

### Using EMU8086 (Recommended)
1. Download and install [EMU8086](https://emu8086-microprocessor-emulator.en.softonic.com/)
2. Open any `.asm` file
3. Click **Compile** then **Run**
4. Watch registers and memory in real time

### Using DOSBox + MASM/TASM
```bash
# Assemble
masm filename.asm;

# Link
link filename.obj;

# Run
filename.exe
```

---

## 🧠 Key Concepts Covered

- **Registers**: AX, BX, CX, DX, SI — general-purpose usage
- **Addressing Modes**: Register, immediate, direct, indirect (`[SI]`, `[SI+1]`)
- **DOS Interrupts**: `INT 21H` for keyboard input and console output
- **Control Flow**: `JMP`, `JG`, `JBE`, `JAE`, `JE`, `LOOP`, `CALL`
- **Stack**: `PUSH CX` / `POP CX` to preserve loop counters in nested loops
- **Procedures**: `CALL` and `RET` for modular code (`PRINT_ARRAY`)
- **Arithmetic**: `MUL`, `DIV`, `ADD`, `SUB`, `XOR` for zero-clearing

---

## 👤 Author

**Omar Awad**  
Electronics & Communications Engineering — Year 3  
October 6 University, Egypt

[![LinkedIn](https://img.shields.io/badge/LinkedIn-Connect-blue?style=flat&logo=linkedin)](https://www.linkedin.com/in/omar-eldomyaty/)

---

## 📄 License

This repository is for **educational purposes**.  
Feel free to study, reference, or build on these examples.

---

<div align="center">
<sub>Written in x86 Assembly · Microprocessor Lab · OCT 6 University</sub>
</div>
