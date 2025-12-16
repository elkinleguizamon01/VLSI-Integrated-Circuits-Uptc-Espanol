# 🧠 VLSI Integrated Circuits  
### *(UPTC – Introducción al Diseño Digital)*

Este repositorio contiene una **introducción a los fundamentos del diseño digital**, enfocada en el uso de **Verilog y VHDL** como lenguajes de descripción de hardware (HDL).

A lo largo del repositorio se desarrollan conceptos esenciales del diseño digital, tales como:

- Definir modulos con entradas y salidas logicas de uno o varios bits 
- Escribir expresiones usando variables logicas y operaciones 
- Usar sentencias assign y bloques always_comb para generar logica combinacional.
- Utilizar always_ff para modelar flip-flops tipo D  

Todo el contenido está orientado a comprender cómo se modelan y diseñan **circuitos digitales reales** a nivel de hardware.

---

## 📘 Introducción al Diseño Digital en Verilog

### ¿Qué es Verilog?

**Verilog** es un lenguaje de descripción de hardware (HDL) diseñado específicamente para describir:

- Circuitos digitales  
- Su funcionamiento interno  
- Las interconexiones entre componentes  
- El comportamiento lógico del sistema  

A diferencia de lenguajes de programación tradicionales como **C** o **Python**, Verilog **no describe instrucciones secuenciales ejecutadas por un procesador**, sino que modela **hardware real**, como:

- Puertas lógicas  
- Flip-Flops  
- Registros  
- Multiplexores  
- Máquinas de estado  

El código escrito en Verilog puede ser **sintetizado**, es decir, convertido en circuitos físicos dentro de un FPGA o ASIC.

---

## 🔌 Lógica Combinacional

La **lógica combinacional** es uno de los pilares fundamentales del diseño digital. Se caracteriza porque:

- Las salidas dependen **únicamente del valor actual de las entradas**
- No utiliza memoria, registros ni estados previos
- No existe dependencia del tiempo (sin retroalimentación)

En Verilog, la lógica combinacional se describe principalmente mediante:

- **Asignaciones continuas** (`assign`)
- **Expresiones matemáticas o booleanas**

Las herramientas de síntesis convierten estas descripciones en **puertas lógicas físicas** dentro del hardware.

---

### 🧩 1. Conceptos fundamentales de la lógica combinacional

La lógica combinacional está compuesta por las siguientes puertas lógicas básicas:

- AND  
- OR  
- NOT  
- NAND  
- NOR  
- XOR  
- XNOR  

Estas puertas pueden combinarse para formar circuitos más complejos.  
Para **cada combinación de entradas**, existe **una única salida definida**.

La lógica combinacional se utiliza ampliamente en:

- Sumadores y ALUs  
- Decodificadores  
- Codificadores  
- Comparadores  
- Multiplexores  

---

### 🧪 2. Lógica combinacional en Verilog (`assign`)

A continuación se muestra la descripción en Verilog de una **compuerta OR** utilizando una asignación continua:

```verilog
// OR gate in Verilog
module ej1 (
    input  logic a, b,
    output logic o
);
    assign o = a || b;
endmodule


El software de sintesis logica traduce esta descripcion en un circuito fiscio equivalente.

Verilog incluye la mayoria de los operadores del lenguaje c:

* Aritméticos: + - * / %

* A nivel de bits: & | ^ ~ << >>

* Comparación: > >= !=

* Lógicos: && || !

* Indexación de arreglos: []

* Operador condicional: ?: 