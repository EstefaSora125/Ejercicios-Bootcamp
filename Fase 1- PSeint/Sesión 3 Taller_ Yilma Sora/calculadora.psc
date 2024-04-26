Algoritmo calculadora
	Definir menu Como Entero;
	Definir num1, num2, resultado Como Real;
		
	Escribir "Ingrese el primer valor a operar"
	Leer num1
	
	Escribir "Ingrese el segundo valor a operar"
	Leer num2
	
	Escribir "Seleccione una opción del menú";
	Escribir "1) Suma 2) Resta 3) Multiplicación 4) División 5) Salir"
	Leer menu

	Segun menu Hacer
		caso 1:
			resultado = num1 + num2;
			Escribir "El resultado de la operación es: ", resultado;
		caso 2:
			resultado = num1 - num2;
			Escribir "El resultado de la operación es: ", resultado;
		caso 3:
			resultado = num1 * num2;
			Escribir "El resultado de la operación es: ", resultado;
		caso 4:
			Si num2 = 0 Entonces
				Escribir "El dividendo no puede ser igual a cero"
			SiNo 
				resultado = num1 / num2;
				Escribir "El resultado de la operación es: ", resultado;
				
			FinSi
			
		caso 5:
			Escribir "La sesión ha finalizado";
		De Otro Modo:
			Escribir "Ha seleccionado una opción no válida"
	FinSegun
	
FinAlgoritmo
