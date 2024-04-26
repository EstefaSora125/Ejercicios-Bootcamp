//8. Calculadora simple: Escriba un algoritmo que lea dos n�meros reales y luego muestre las opciones 
//de las posibles operaciones (aritm�ticas y relacionales) que se pueden realizar con dos n�meros. El 
//algoritmo debe permitir elegir una de las opciones y mostrar el resultado de la operaci�n.


Funcion calcularSuma(num1, num2)
	Definir suma Como Real
	suma= num1 + num2
	Escribir "El resultado de la suma es: ", suma
FinFuncion

Funcion calcularResta(num1, num2)
	Definir resta Como Real
	resta= num1 - num2
	Escribir "El resultado de la resta es: ", resta
FinFuncion

Funcion calcularMultiplicacion(num1, num2)
	Definir multiplicacion Como Real
	multiplicacion = num1 * num2
	Escribir "El resultado de la multiplicaci�n es: ", multiplicacion
FinFuncion

Funcion calcularDivision(num1, num2)
	Definir division Como Real	
	Si num2 <>0 Entonces
		division = num1 / num2
		Escribir "El resultado de la divisi�n es: ", division
	SiNo
		Escribir "Error: no se puede dividir por cero"
	FinSi
		
FinFuncion

Funcion calcularExponencial(num1, num2)
	Definir exponente Como Real
	exponente = num1^(num2)
	Escribir "El resultado de la exponenciaci�n es: ", exponente
FinFuncion

Funcion calcularModulo(num1, num2)
	Definir modulo Como Real	
	Si num2 <>0 Entonces
		modulo = num1 MOD num2
		Escribir "El m�dulo de la divisi�n es: ", modulo
	SiNo
		Escribir "Error: no se puede dividir por cero"
	FinSi
FinFuncion

Funcion calcularMayorQue(num1, num2)
	Si num1>num2 Entonces
		Escribir num1, " es mayor que ", num2
	SiNo
		Escribir num2, " es mayor que ", num1
	FinSi	
FinFuncion

Funcion calcularMenorQue(num1, num2)
	Si num1<num2 Entonces
		Escribir num1, " es menor que ", num2
	SiNo
		Escribir num2, " es menor que ", num1
	FinSi	
FinFuncion

Funcion calcularIgualdades(num1, num2)
	Si num1 = num2 Entonces		
		Escribir "Los n�meros ingresados son iguales" 	
	SiNo
		Si num1 <> num2 Entonces
			
			Escribir "Los n�meros ingresados no son iguales" 	
		FinSi
	FinSi
	
FinFuncion

Algoritmo main 
	Definir num_1, num_2 Como Real
	Definir option Como Logico
	Definir menu Como Entero
	
	option = Falso
	
	Escribir "Ingrese el primer n�mero"
	Leer num_1
	
	Escribir "Ingrese el segundo n�mero"
	Leer num_2
	
	
	Mientras No option Hacer
		Escribir "Puede elegir una de las siguientes opciones del men�: "
		Escribir "1. Suma"
		Escribir "2. Resta"
		Escribir "3. Multiplicaci�n"
		Escribir "4. Exponenciaci�n"
		
		Si num_2<>0 Entonces
			Escribir "5. Divisi�n"	
			Escribir "6. M�dulo"
		FinSi
		
		Escribir  "* * * * * * * * * * "
		
		Escribir "7. Mostrar el n�mero mayor"
		Escribir "8. Mostrar el n�mero menor"
		Escribir "9. Validar equivalencia entre los n�meros"		
		Escribir "10. Salir"		 
			
		Leer menu
		
		Si menu >0 | (menu = 5) Entonces
			Segun menu Hacer
				Caso 1:
					calcularSuma(num_1, num_2)
				Caso 2:
					calcularResta(num_1, num_2)
				Caso 3:
					calcularMultiplicacion(num_1, num_2)
				Caso 4: 
					calcularExponencial(num_1, num_2)
				Caso 5:
					Si num_2 = 0 Entonces
						Escribir "Esta opci�n no est� disponible pues la divisi�n no se puede realizar por cero"
					SiNo
						calcularDivision(num_1, num_2)
					FinSi					
				Caso 6: 
					Si num_2 = 0 Entonces
						Escribir "Esta opci�n no est� disponible pues la divisi�n no se puede realizar por cero"
					SiNo
						calcularModulo(num_1, num_2)
					FinSi						
				Caso 7:
					calcularMayorQue(num_1, num_2)
				Caso 8: 
					calcularMenorQue(num_1, num_2)
				caso 9: 
					calcularIgualdades(num_1, num_2)									
				De Otro Modo:
					Escribir "La sesi�n ha finalizado"
			Fin Segun
			option=Verdadero
		FinSi		
	Fin Mientras
FinAlgoritmo
