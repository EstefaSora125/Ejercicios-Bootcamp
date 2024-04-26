//6. Complete las siguientes tablas, indicando el valor de verdad de cada una de las //proposiciones:

Funcion tablaVerdad
	Definir matrizDeVerdad Como Logico
	Definir i,j Como Entero
	Dimension matrizDeVerdad[4,5]
	
	matrizDeVerdad[0,0] = Verdadero
	matrizDeVerdad[1,0] = Verdadero
	matrizDeVerdad[2,0] = Falso
	matrizDeVerdad[3,0] = Falso
	
	
	matrizDeVerdad[0,1] = Verdadero
	matrizDeVerdad[1,1] = Falso
	matrizDeVerdad[2,1] = Verdadero
	matrizDeVerdad[3,1] = Falso
	
	Para i<-0 Hasta 3 Con Paso 1 Hacer
		matrizDeVerdad[i,2] = No matrizDeVerdad[i,1]
		matrizDeVerdad[i,3] = matrizDeVerdad[i,0] | matrizDeVerdad[i,2]
		matrizDeVerdad[i,4] = matrizDeVerdad[i,2] & matrizDeVerdad[i,3]
		
	Fin Para
	
	Para i<-0 Hasta 3 Con Paso 1 Hacer
		
		Escribir "|  " i " |" Sin Saltar
		Para j<-0 Hasta 4 Con Paso 1 Hacer	
			
			Si matrizDeVerdad[i,j] Entonces				
				Escribir "  V  |" Sin Saltar
			Sino
				Escribir "  F  |" Sin Saltar
			FinSi
		Fin Para
		Escribir ""
	Fin Para
	
FinFuncion

Algoritmo main
	
	tablaVerdad

FinAlgoritmo
