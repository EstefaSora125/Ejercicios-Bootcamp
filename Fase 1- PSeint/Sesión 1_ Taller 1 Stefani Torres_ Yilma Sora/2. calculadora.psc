Proceso  calculadora
	Definir num_1, num_2, menu Como Entero;  
	
	Repetir 
		Escribir "Seleccione una opci�n del men� "
		Escribir "1. Suma "
		Escribir "2. Resta"
		Escribir "3. Multiplicaci�n"
		Escribir "4. Divisi�n"
		Escribir "5. Salida"
		
		Leer menu
		
		Escribir "Ingrese el valor del primer n�mero "
		Leer num_1;
	
		Escribir "Ingrese el valor del segundo n�mero: "
		Leer num_2;
	
			
		Segun menu Hacer
			1: Escribir"El resultado de la suma es: ", num1 + num_2;
			2: Escribir"El resultado de la resta es: ", num1 - num_2;
			3: Escribir"El resultado de la multiplicaci�n es: ", num1 * num_2;
			4: Escribir"El resultado de la divisi�n es: ", num1 / num_2;
		FinSegun
	Hasta Que menu = 5
	Escribir "La sesi�n ha finalizado"
FinProceso
