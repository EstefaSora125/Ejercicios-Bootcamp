Proceso Ejercicio15
	Definir num1, num2, menu Como Entero;
	Escribir "Ingrese dos números";
	Leer  num1, num2;
	
	Repetir
		
		
		Escribir "Ingrese una opción de la calculadora ";
		Escribir "1. Suma ";
		Escribir "2. Resta";
		Escribir "5. Salir";
		
		Leer menu;
		
		Segun menu Hacer
			1: Escribir "El resultado de la suma es: " num1 + num2;
			2: Escribir "El resultado de la resta es: " num1 - num2;
				
		FinSegun
	Hasta Que menu =5 
	Limpiar Pantalla
FinProceso
