Algoritmo anoBisiesto
	Definir anio como Entero
	
	Escribir "Ingrese el a�o para definir si es bisiesto o no"
	Leer anio
	
	bisiesto = anio MOD 4
	
	Segun bisiesto Hacer
		caso 0: Escribir "El a�o es bisiesto"
		De Otro Modo:
			Escribir "El a�o no es bisiesto"
	FinSegun
	
FinAlgoritmo
