Proceso Ejercicio19
	Definir palabra, concatenado Como Caracter;
	Escribir "Ingrese la cadena de caracteres"
	
	
	Mientras  palabra <> "Fin" Hacer
		Leer palabra;
		concatenado = Concatenar(concatenado, palabra)			
	FinMientras;
	
	Escribir  "La palabra final es: " concatenado;
FinProceso
