//8. Calculadora simple: Escriba un algoritmo que lea dos números reales y luego muestre las opciones 
//de las posibles operaciones (aritméticas y relacionales) que se pueden realizar con dos números. El 
//algoritmo debe permitir elegir una de las opciones y mostrar el resultado de la operación.


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
	Escribir "El resultado de la multiplicación es: ", multiplicacion
FinFuncion

Funcion calcularDivision(num1, num2)
	Definir division Como Real	
	Si num2 <>0 Entonces
		division = num1 / num2
		Escribir "El resultado de la división es: ", division
	SiNo
		Escribir "Error: no se puede dividir por cero"
	FinSi
		
FinFuncion

Funcion calcularExponencial(num1, num2)
	Definir exponente Como Real
	exponente = num1^(num2)
	Escribir "El resultado de la exponenciación es: ", exponente
FinFuncion

Funcion calcularModulo(num1, num2)
	Definir modulo Como Real	
	Si num2 <>0 Entonces
		modulo = num1 MOD num2
		Escribir "El módulo de la división es: ", modulo
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
		Escribir "Los números ingresados son iguales" 	
	SiNo
		Si num1 <> num2 Entonces
			
			Escribir "Los números ingresados no son iguales" 	
		FinSi
	FinSi
	
FinFuncion

Algoritmo main 
	Definir num_1, num_2 Como Real
	Definir option Como Logico
	Definir menu Como Entero
	
	option = Falso
	
	Escribir "Ingrese el primer número"
	Leer num_1
	
	Escribir "Ingrese el segundo número"
	Leer num_2
	
	
	Mientras No option Hacer
		Escribir "Puede elegir una de las siguientes opciones del menú: "
		Escribir "1. Suma"
		Escribir "2. Resta"
		Escribir "3. Multiplicación"
		Escribir "4. Exponenciación"
		
		Si num_2<>0 Entonces
			Escribir "5. División"	
			Escribir "6. Módulo"
		FinSi
		
		Escribir  "* * * * * * * * * * "
		
		Escribir "7. Mostrar el número mayor"
		Escribir "8. Mostrar el número menor"
		Escribir "9. Validar equivalencia entre los números"		
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
						Escribir "Esta opción no está disponible pues la división no se puede realizar por cero"
					SiNo
						calcularDivision(num_1, num_2)
					FinSi					
				Caso 6: 
					Si num_2 = 0 Entonces
						Escribir "Esta opción no está disponible pues la división no se puede realizar por cero"
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
					Escribir "La sesión ha finalizado"
			Fin Segun
			option=Verdadero
		FinSi		
	Fin Mientras
FinAlgoritmo
