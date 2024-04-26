Proceso promedio
	Definir nota, total Como Real
	Definir agregar Como Caracter
	
	Escribir "¿Desea agregar una nota a promediar (S/N)?"
	Leer agregar;
	Mientras agregar = "S" Hacer
		
		Escribir "Ingrese el valor de la nota"
		Leer nota;
		
		resultado = resultado + nota;
		canti =  canti+1;
		
		Escribir "¿Desea agregar una nota a promediar (S/N)?"
		Leer agregar;
	FinMientras
	
	Si canti = 0 Entonces
		Escribir "No se puede calcular el promedio"
	SiNo
		Si agregar = "N"
			Escribir "La sesión a finalizado"
		FinSi
		Escribir "Su promedio es: ", resultado/canti 
	FinSi
	
FinProceso
	