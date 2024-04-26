Proceso  calculadora
	Definir num_1, num_2, menu Como Entero;  
	
	Repetir 
		Escribir "Seleccione una opción del menú "
		Escribir "1. Suma "
		Escribir "2. Resta"
		Escribir "3. Multiplicación"
		Escribir "4. División"
		Escribir "5. Salida"
		
		Leer menu
		
		Escribir "Ingrese el valor del primer número "
		Leer num_1;
	
		Escribir "Ingrese el valor del segundo número: "
		Leer num_2;
	
			
		Segun menu Hacer
			1: Escribir"El resultado de la suma es: ", num1 + num_2;
			2: Escribir"El resultado de la resta es: ", num1 - num_2;
			3: Escribir"El resultado de la multiplicación es: ", num1 * num_2;
			4: Escribir"El resultado de la división es: ", num1 / num_2;
		FinSegun
	Hasta Que menu = 5
	Escribir "La sesión ha finalizado"
FinProceso
