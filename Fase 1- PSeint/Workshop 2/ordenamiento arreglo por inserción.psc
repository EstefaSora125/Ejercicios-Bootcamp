Algoritmo prueba
	
	Definir arreglo, clave, i,may, men, anterior, proximo  Como Entero
	Definir j, evj Como Real
	Definir op Como Logico
	Dimensionar arreglo[5]
	
	arreglo[0] = 5
	arreglo[1] = 2
	arreglo[2] = 4
	arreglo[3] = 1
	arreglo[4] = 3
	may = 0
	men = 0
	
	op = Falso
	
	imprimirArreglo(arreglo);
	
	Para i<-1 Hasta 4 Con Paso 1 Hacer
		clave = i		
		j = i-1
		Mientras  (j>= 0) Hacer	
			Si arreglo[clave] < arreglo[j] Entonces				
				may = j
						
			SiNo
				may = j+1
				men = j
				j = -1
			FinSi
			j = j-1	
			
		Fin Mientras
		
		Si may = 0  Entonces
			Si clave>2 Entonces
				anterior = arreglo[may]
				proximo = arreglo[may]
				arreglo[may] = arreglo[clave]	
				
				Mientras (may+1)<clave Hacer
					
					anterior = arreglo[may+1]					
					arreglo[may+1] = proximo
					proximo = anterior					
					may =  may +1
				Fin Mientras
				arreglo[clave] = proximo
			SiNo
				anterior = arreglo[may]
				arreglo[may] = arreglo[clave]
				arreglo[clave] = anterior
			FinSi
		SiNo
			Si may - men = 1 Entonces
				Si clave >2 Entonces
					anterior = arreglo[may]
					proximo = arreglo[may]
					arreglo[may] = arreglo[clave]	
					
					Mientras (may+1)<clave Hacer
						
						anterior = arreglo[may+1]					
						arreglo[may+1] = proximo
						proximo = anterior					
						may =  may +1
					Fin Mientras
					arreglo[clave] = proximo
				SiNo
					anterior = arreglo[may]
					arreglo[may] = arreglo[clave]
					arreglo[clave] = anterior
					
				FinSi
			SiNo				
				anterior = arreglo[may]
				arreglo[may] = arreglo[clave]
				arreglo[clave] = anterior
			FinSi	
			
		FinSi
		
		
		
		
			imprimirArreglo(arreglo)
		
		
		
	Fin Para
	

	
	
FinAlgoritmo

SubAlgoritmo imprimirArreglo(arr)
    Definir  i Como Entero
    Para  i = 0 Hasta 4
        Escribir Sin Saltar arr[i]
    FinPara
    Escribir ""
FinSubAlgoritmo