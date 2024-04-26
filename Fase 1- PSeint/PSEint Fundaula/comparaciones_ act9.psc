Proceso  comparaciones
	Definir num1 Como REAL
	
	Escribir "Introduce un número: ";
	Leer num1;
	Escribir num1>0 Y num1<10
	
FinProceso


Proceso Ejercicio9
	Definir num Como Entero;
	Definir res Como Logico;
	Escribir "Introduce un número: ";
	Leer num;
	res = num>=0 & num<=10;
	Escribir "El num es ", res, " que está dentro del rango de 0 a 10";
FinProceso