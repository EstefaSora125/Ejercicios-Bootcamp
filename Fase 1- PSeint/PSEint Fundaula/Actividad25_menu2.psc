Proceso Ejercicio25
	Definir resultado Como Real;
	Definir num1, num2, opcion Como Entero;
	Definir continuar Como Logico;
	
	continuar=Verdadero;
	Mientras continuar Hacer
		Escribir "Selecciona la operaci�n que quieres realizar: ";
		Escribir "1. Suma";
		Escribir "2. Resta";
		Escribir "3. Multiplicaci�n";
		Escribir "4. Divisi�n";
		Escribir "5. Salir";
		Escribir "Opci�n: ";
		
		Leer opcion;
		
		Escribir "Introduce los dos n�meros: ";
		Leer num1;
		Leer num2;
		
		Segun opcion Hacer
			1: resultado = num1 + num2;
			2: resultado = num1 - num2;
			3: resultado = num1 * num2;
			4: resultado = num1 / num2;
			5: continuar = Falso;
			De Otro Modo:
				Escribir "No has seleccionado una opci�n v�lida.";
		FinSegun
		Si opcion=1 o opcion=2 o opcion=3 o opcion=4 entonces
			Escribir resultado;
		FinSi
	FinMientras
FinProceso