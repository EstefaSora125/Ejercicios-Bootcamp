Proceso Ejercicio23
	Definir num Como Entero;
	Definir letra Como Caracter;
	Definir continuar Como Logico;
	continuar=Verdadero;
	Mientras (continuar) Hacer
		Escribir "Introduce un n�mero: ";
		Leer num;
		Si (num MOD 2 = 0) Entonces
			Escribir "El numero ", num, " es PAR";
		SiNo
			Escribir "El numero ", num, " es IMPAR";
		FinSi
		Escribir "Quieres introducir otro n�mero (S/N): ";
		Leer letra;
		Si letra="N" o letra="n" Entonces
			continuar=Falso;
		FinSi
	FinMientras
FinProceso