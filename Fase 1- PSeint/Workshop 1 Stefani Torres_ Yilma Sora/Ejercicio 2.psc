//2. Dise�e un algoritmo que lea �nicamente dos n�meros y muestre el resultado de sumar, //restar, 
//multiplicar y dividir esos dos n�meros.

Funcion definirTipoDeOperacion (num1, num2)
	
	Escribir "La suma de los dos n�meros es: ", calcularSuma(num1, num2)
	Escribir "La resta de los dos n�meros es: ", calcularResta(num1, num2)
	Escribir "La multiplicaci�n de los dos n�meros es: ",calcularMultiplicacion(num1, num2)
	Escribir "La divisi�n de los dos n�meros es: ", calcularDivision(num1, num2)
	
Fin Funcion


Funcion suma <- calcularSuma(num1, num2)
	Definir suma Como Real
	suma <- num1 + num2
Fin Funcion

Funcion resta <- calcularResta(num1, num2)
	Definir resta Como Real
	resta <- num1 - num2
Fin Funcion

Funcion multiplicacion <- calcularMultiplicacion(num1, num2)
	Definir multiplicacion Como Real
	multiplicacion <- num1 * num2
Fin Funcion

Funcion division <- calcularDivision(num1, num2)
	Definir  division  Como Real
	division <- num1 / num2
Fin Funcion


Algoritmo operacionesAritmeticas
	
	definir num1, num2 Como Entero
	definir operacionValida Como Logico
	definir tipoDeOperacion Como Caracter
	
	Escribir "Operaciones artim�ticas"
	
	//Validaci�n de primer valor
	operacionValida <- Falso
	Mientras No operacionValida Hacer
		Escribir "Ingrese el primer valor"
		Leer num1
		
		Si num1 = trunc(num1) Entonces
			operacionValida <- Verdadero
		SiNo
			Escribir "Ingrese una operaci�n valida."
		Fin Si
	Fin Mientras
	
	//Validaci�n de segundo valor
	operacionValida <- Falso
	Mientras No operacionValida Hacer
		Escribir "Ingrese el segundo valor"
		Leer num2
		
		Si num2 = trunc(num2) Entonces
			operacionValida <- Verdadero
		SiNo
			Escribir "Ingrese una operaci�n valida."
		Fin Si
	Fin Mientras
	
	definirTipoDeOperacion(num1, num2)
	

FinAlgoritmo