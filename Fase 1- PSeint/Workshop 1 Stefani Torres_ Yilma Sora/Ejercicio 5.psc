//5. Indique cual es el valor asignado:
//? ← (7 * (10 - 5) mod 3) * 4 + 9
//? ← 1 – 10 ^ 2 + 3 * (20 div 3) + 7 mod 4


Funcion mostrarValores
	Definir respuesta1, respuesta2 Como Real
	
	respuesta1 = (7* (10-5) MOD 3) * 4 + 9;
	respuesta2 = 1-(10^2) + 3 * Trunc (20 / 3) +  7 MOD 4
	
	Escribir  "La respuesta al primer punto es: ", respuesta1 
	Escribir  "La respuesta al segundo punto es: ", respuesta2 
	
FinFuncion

Algoritmo entregarValoresAsignados
	mostrarValores
	
FinAlgoritmo
