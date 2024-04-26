Proceso Ejercicio25
	Definir resultado Como Real;
	Definir num1, num2, opcion Como Entero;
	Definir continuar Como Logico;
	
	continuar=Verdadero;
	Mientras continuar Hacer
		Escribir "Selecciona la operación que quieres realizar: ";
		Escribir "1. Suma";
		Escribir "2. Resta";
		Escribir "3. Multiplicación";
		Escribir "4. División";
		Escribir "5. Salir";
		Escribir "Opción: ";
		
		Leer opcion;
		
		Escribir "Introduce los dos números: ";
		Leer num1;
		Leer num2;
		
		Segun opcion Hacer
			1: resultado = num1 + num2;
			2: resultado = num1 - num2;
			3: resultado = num1 * num2;
			4: resultado = num1 / num2;
			5: continuar = Falso;
			De Otro Modo:
				Escribir "No has seleccionado una opción válida.";
		FinSegun
		Si opcion=1 o opcion=2 o opcion=3 o opcion=4 entonces
			Escribir resultado;
		FinSi
	FinMientras
FinProceso