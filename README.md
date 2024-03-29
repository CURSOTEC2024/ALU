Una Arithmetic Logic Unit (ALU) es un componente clave dentro de un procesador, que ejecuta operaciones aritméticas 
y lógicas en datos binarios. Cuando se ve desde la perspectiva de un circuito, la ALU está compuesta por una serie de 
unidades funcionales interconectadas que realizan diferentes operaciones, y también incluye lógica adicional para generar
banderas que indican ciertas condiciones o estados de las operaciones realizadas.
 
 Estas banderas típicamente incluyen:
 
 Carry (acarreo): Indica si ha ocurrido un acarreo (carry) al bit más significativo durante una operación aritmética.
 Overflow (sobreflujo): Indica si el resultado de una operación aritmética excede el rango de representación disponible.
 Zero (cero): Indica si el resultado de una operación es cero.
 Sign (signo): Indica si el resultado de una operación es positivo o negativo, basado en el bit más significativo del resultado.

 El símbolo de una Arithmetic Logic Unit (ALU) de 4 bits, incluyendo sus banderas se muestra en la Figura

 <img width="404" alt="Captura de pantalla 2024-03-29 015941" src="https://github.com/diazAngelFR/ALU/assets/165363474/757e3fce-9af1-4358-a344-09ed8254e4f3">

Donde:

A[3:0] y B[3:0] son los operandos de entrada de 4 bits.

ALU OUT [3:0] es el resultado de la operación aritmética de la ALU de 4 bits.

CARRY OUT es la salida de la bandera de carry.

OVERFLOW es la salida de la bandera de sobreflujo.

ZERO es la salida de la bandera de cero.

SIGNO es la salida de la bandera de signo.

En la Figure 2 se tiene la tabla de verdad para la ALU donde se muestran las operaciones que puede realizar dependiendo del selector ”SEL”.

<img width="312" alt="Captura de pantalla 2024-03-29 020134" src="https://github.com/diazAngelFR/ALU/assets/165363474/e7117fe9-216d-4155-b06f-8bb69c9dd9a6">
