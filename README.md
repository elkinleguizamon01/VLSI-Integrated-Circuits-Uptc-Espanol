# 🧠 VLSI Integrated Circuits  
### *(UPTC – Introducción al Diseño Digital)*

Este repositorio contiene una **introducción a los fundamentos del diseño digital**, enfocada en el uso de **Verilog y VHDL** como lenguajes de descripción de hardware (HDL).

## 📚 Contenido Principal

A lo largo del repositorio se desarrollan conceptos esenciales del diseño digital:

- ✅ Definir módulos con entradas y salidas lógicas de uno o varios bits
- ✅ Escribir expresiones usando variables lógicas y operaciones booleanas
- ✅ Usar sentencias `assign` y bloques `always_comb` para generar lógica combinacional
- ✅ Utilizar `always_ff` para modelar flip-flops tipo D
- ✅ Diseñar multiplexores y buses de datos
- ✅ Crear máquinas de estado y circuitos secuenciales

Todo el contenido está orientado a comprender cómo se modelan y diseñan **circuitos digitales reales** a nivel de hardware.

---

## 📘 Introducción al Diseño Digital en Verilog

### ¿Qué es Verilog?

**Verilog** es un lenguaje de descripción de hardware (HDL) diseñado específicamente para describir:

- Circuitos digitales y su funcionamiento interno
- Las interconexiones entre componentes
- El comportamiento lógico del sistema
- Sistemas digitales complejos a diferentes niveles de abstracción

A diferencia de lenguajes de programación tradicionales como **C** o **Python**, Verilog **no describe instrucciones secuenciales ejecutadas por un procesador**, sino que modela **hardware real**, como:

- Puertas lógicas
- Flip-Flops y registros
- Multiplexores y decodificadores
- Máquinas de estado
- Unidades aritméticas y lógicas (ALUs)

El código escrito en Verilog puede ser **sintetizado**, es decir, convertido en circuitos físicos dentro de un FPGA o ASIC.

---

## 🔌 Lógica Combinacional

La **lógica combinacional** es uno de los pilares fundamentales del diseño digital. Se caracteriza porque:

- Las salidas dependen **únicamente del valor actual de las entradas**
- No utiliza memoria, registros ni estados previos
- No existe dependencia del tiempo (sin retroalimentación)

En Verilog, la lógica combinacional se describe principalmente mediante:

- **Asignaciones continuas** (`assign`)
- **Bloques `always_comb`**
- **Expresiones matemáticas o booleanas**

Las herramientas de síntesis convierten estas descripciones en **puertas lógicas físicas** dentro del hardware.

---

### 🧩 1. Conceptos fundamentales de la lógica combinacional

La lógica combinacional está compuesta por las siguientes puertas lógicas básicas:

| Puerta | Símbolo | Descripción |
|--------|---------|-------------|
| AND | `&` | Salida 1 si todas las entradas son 1 |
| OR | `\|` | Salida 1 si al menos una entrada es 1 |
| NOT | `~` | Invierte la entrada |
| NAND | `~&` | Inversa de AND |
| NOR | `~\|` | Inversa de OR |
| XOR | `^` | Salida 1 si las entradas son diferentes |
| XNOR | `~^` | Inversa de XOR |

Estas puertas pueden combinarse para formar circuitos más complejos. Para **cada combinación de entradas**, existe **una única salida definida**.

La lógica combinacional se utiliza ampliamente en:

- Sumadores y ALUs (Unidades Aritméticas Lógicas)
- Decodificadores y codificadores
- Comparadores
- Multiplexores y demultiplexores
- Detectores de paridad

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
```

El software de síntesis lógica traduce esta descripción en un circuito físico equivalente.

#### Operadores disponibles en Verilog:

| Categoría | Operadores | Ejemplos |
|-----------|-----------|----------|
| **Aritméticos** | `+` `-` `*` `/` `%` | `a + b`, `a - b` |
| **A nivel de bits** | `&` `\|` `^` `~` `<<` `>>` | `a & b`, `a ^ b`, `a << 2` |
| **Comparación** | `>` `>=` `<` `<=` `==` `!=` | `a > b`, `a == b` |
| **Lógicos** | `&&` `\|\|` `!` | `a && b`, `!a` |
| **Condicional** | `? :` | `(sel) ? a : b` |
| **Indexación** | `[ ]` | `bus[7:0]`, `array[3]` |

---

## ⏱️ Lógica Secuencial

La **lógica secuencial** es la otra parte fundamental del diseño digital. A diferencia de la lógica combinacional, en la lógica secuencial:

- Las salidas dependen de entradas **actuales y pasadas**
- Utiliza memoria y estados previos
- Requiere una señal de reloj (clock) para sincronizar cambios
- Se utiliza en máquinas de estado, contadores y registros

---

### 📋 Registros y Flip-Flops

Ejemplo de un **flip-flop tipo D**, el elemento básico de almacenamiento:

```verilog
module ex2 (
    input  logic d, clk,
    output logic q
);
    always_ff @(posedge clk) begin
        q <= d;
    end
endmodule
```

**Explicación:**
- `always_ff`: Indica un bloque secuencial (sensible al reloj)
- `@(posedge clk)`: Se ejecuta en el flanco positivo del reloj
- `q <= d`: Asignación no-bloqueante (propia de bloques secuenciales)
- Este código sintetiza un flip-flop D que copia la entrada `d` a la salida `q` en cada flanco positivo

---

## 🔀 Multiplexores y Buses

### Multiplexores con sentencia `if`

La sentencia `if` modela un **multiplexor 2:1**:

```verilog
module ex3 (
    input  logic sel,
    input  logic [3:0] a, b,
    output logic [3:0] y
);
    always_comb begin
        if (sel) 
            y = a;
        else 
            y = b;
    end
endmodule
```

**Explicación:**
- `sel`: Señal de selección
- `[3:0]`: Rango de bits (4 bits, desde bit 3 al 0)
- Según el valor de `sel`, selecciona entre `a` o `b`

### Buses de datos

Los arreglos representan **buses** (grupos de bits). Normalmente se definen con el bit más significativo (MSB) a la izquierda y el menos significativo (LSB) a la derecha:

```verilog
logic [7:0] bus;  // Bus de 8 bits (bit 7 es MSB, bit 0 es LSB)
logic [15:0] address;  // Bus de dirección de 16 bits
```

---

## 🛠️ Herramientas Recomendadas

- **Simuladores:** ModelSim,  Icarus Verilog
- **Sintetizadores:** Quartus (Intel/Altera), Yosys
- **Editores:** VS Code con extensiones HDL

---

## 📖 Recursos Adicionales



---

## 📝 Licencia

Este proyecto es de código abierto.


