Algoritmo promedioVentasPorSemana
	
	Definir i, j, filas, columnas Como Entero
	Definir sumatoria Como Real
	
	filas = 4
	columnas = 7
	Dimension promedioSemana[filas]
	Dimension ventas[filas,columnas]
	Para i<-0 Hasta filas - 1 Con Paso 1 Hacer
		Para j<-0 Hasta columnas - 1 Con Paso 1 Hacer
			Escribir "Ingrese el valor de venta del dia " j " semana " i + 1
			Leer ventas[i, j]
		Fin Para
	Fin Para
	
	Para i<-0 Hasta filas -1 Con Paso 1 Hacer
		sumatoria = 0
		Para j<-0 Hasta columnas-1 Con Paso 1 Hacer
			sumatoria = sumatoria + ventas(i,j)
		Fin Para
		promedioSemana[i] = sumatoria/columnas
	Fin Para
	Para i<-0 Hasta filas - 1 Con Paso 1 Hacer
		Escribir "El promedio de la semana " i " es: " promedioSemana[i]
	Fin Para
	
FinAlgoritmo