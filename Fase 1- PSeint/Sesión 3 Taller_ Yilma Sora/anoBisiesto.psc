Algoritmo anoBisiesto
	Definir anio como Entero
	
	Escribir "Ingrese el año para definir si es bisiesto o no"
	Leer anio
	
	bisiesto = anio MOD 4
	
	Segun bisiesto Hacer
		caso 0: Escribir "El año es bisiesto"
		De Otro Modo:
			Escribir "El año no es bisiesto"
	FinSegun
	
FinAlgoritmo
