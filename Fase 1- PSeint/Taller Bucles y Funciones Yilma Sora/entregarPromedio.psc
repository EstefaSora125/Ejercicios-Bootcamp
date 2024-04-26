Funcion promedio<-calcularPromedio(cantidad, suma)
	Definir promedio Como Real
	
	Si cantidad>0 Entonces
		promedio = suma/cantidad
	SiNo
		Escribir "Error: No se puede calcular el promedio con una cantidad de notas igual a cero."
	FinSi
	
FinFuncion

Algoritmo entregarPromedio
	Definir cant, i Como Entero
	Definir sumatoria, nota Como Real
	
	sumatoria = 0;
	
	Para i<-1 Hasta 5 Con Paso 1 Hacer
		Escribir "Ingrese el valor de la nota N°",i
		Leer nota
		sumatoria = sumatoria + nota
	Fin Para
	
	Escribir "El promedio de las notas es: " calcularPromedio(5,sumatoria)
FinAlgoritmo
