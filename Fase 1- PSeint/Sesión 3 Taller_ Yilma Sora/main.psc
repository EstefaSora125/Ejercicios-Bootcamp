//Primer Punto

Funcion determinarValores(i,j, option)
	Definir v Como Entero
	Dimension v[10]
	
	Segun option Hacer
		Caso 1:
			Para i<-0 Hasta 9 Con Paso 1 Hacer
				v[i] =i	
				
				Escribir "- 1.En la posición " i, " se almacena " v[i]
			Fin Para
			
		Caso 2:
			Para i<-0 Hasta 9 Con Paso 1 Hacer
				v[i] <- j
				
				Escribir "-- 2.En la posición " i, " se almacena " v[i]
			Fin Para

		Caso 3:
			
			//Se genera un error pues al ir aumentando las posiciones permitidas
			//del arreglo, se genera un error debido a que los espacios permitidos
			//sobrepasaron el tamaño del arreglo
			
			Para i<-0 Hasta 9 Con Paso 1 Hacer
				v[j + i] = i + j		
				Escribir "--- 3.En la posición " i, " se almacena " v[i]
			Fin Para
		Caso 4:
			//Se crea un bucle infinito, pues va a llegar un momento en que 
			//la posición será siempre 4, y se quedará evaluando esa posición
			Para i<-0 Hasta 9 Con Paso 1 Hacer
				//i <- v[i] + v[j]
				Escribir "---- 4.En la posición " i, " se almacena " v[i]
			Fin Para
		Caso 5:
			
			Para i<-0 Hasta 9 Con Paso 1 Hacer
				v[3] <- 5
				Escribir "----- 5.En la posición " i, " se almacena " v[i]
			Fin Para
		Caso 6:
			
			Para i<-0 Hasta 9 Con Paso 1 Hacer
				j <- v[i] - v[j]
				Escribir "------ 6.En la posición " i, " se almacena " v[i]
			Fin Para


	FinSegun
	

	
FinFuncion

Algoritmo main
	Definir i, j, opt Como Entero
	i = 1
	j=2
	opt = 3
	determinarValores(i,j, opt)	
	
FinAlgoritmo
