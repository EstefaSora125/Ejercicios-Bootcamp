Algoritmo calculadora
	Definir menu Como Entero;
	Definir num1, num2, resultado Como Real;
		
	Escribir "Ingrese el primer valor a operar"
	Leer num1
	
	Escribir "Ingrese el segundo valor a operar"
	Leer num2
	
	Escribir "Seleccione una opci�n del men�";
	Escribir "1) Suma 2) Resta 3) Multiplicaci�n 4) Divisi�n 5) Salir"
	Leer menu

	Segun menu Hacer
		caso 1:
			resultado = num1 + num2;
			Escribir "El resultado de la operaci�n es: ", resultado;
		caso 2:
			resultado = num1 - num2;
			Escribir "El resultado de la operaci�n es: ", resultado;
		caso 3:
			resultado = num1 * num2;
			Escribir "El resultado de la operaci�n es: ", resultado;
		caso 4:
			Si num2 = 0 Entonces
				Escribir "El dividendo no puede ser igual a cero"
			SiNo 
				resultado = num1 / num2;
				Escribir "El resultado de la operaci�n es: ", resultado;
				
			FinSi
			
		caso 5:
			Escribir "La sesi�n ha finalizado";
		De Otro Modo:
			Escribir "Ha seleccionado una opci�n no v�lida"
	FinSegun
	
FinAlgoritmo
