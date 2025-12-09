# VLSI integrated Circuits (Uptc en español)

En este reposito se encontrara la introduccion a los fundamenteos del diseño digital Utilizando  Verilog y VHDL. Se presentaran conceptos esenciales como lógica combinacional, registros, maquinas de estados, FlipFlop, simulación y demás.

## Introduccion al Diseño Digital en Verilog

¿Que es verilog?

Verilog es un lenguaje diseñado especificamente para describir:

* circuitos digitales
* El funcionamiento de ellos 
* las conexiones internas
* el comportamiento 

A diferencia de un lenguaje de programacion tradicional como C o Python, Verilog no describe instrucciones que se ejecutan en un procesador, sino que son Circuitos electronicos reales: puertas logicas, flip-flop, registros, multiplexores, maquinas de estado, etc.

### Logica Combinacional 

La logica combinacional es uno de los pilares del diseño digital. Consiste en circuitos donde las salidas dependen unicamente del valor instantaneo de las entradas, sin emplear memoria, registros ni historicos de valores.

En Verilo, se describe mediante:

* Asignaciones continuas: ``` assign ```
* Expresines matematicas o Booleanas 

La herramienta de sintesis convierte estas descripciones en puertas logicas fisicas dentro del hardware.

#### 1. Conceptos fundamentasles de la logica combinacional 




