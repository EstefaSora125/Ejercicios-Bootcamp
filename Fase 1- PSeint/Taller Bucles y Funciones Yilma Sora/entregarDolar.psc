Funcion pesos<-convertirADolares (pesoMexicano)
	Definir pesos Como Real
	pesos = pesoMexicano * 0.060
	
FinFuncion


Algoritmo entregarDolar
	Definir pesoMex Como Real
	Escribir "Imgrese la cantidad de pesos Mexicanos"
	Leer pesoMex
	
	Escribir pesoMex ," equivalen a ", convertirADolares(pesoMex), " dolares"
	 
FinAlgoritmo
