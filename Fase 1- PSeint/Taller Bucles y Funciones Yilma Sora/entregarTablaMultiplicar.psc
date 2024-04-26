Funcion mostrarTablasMultiplicar
	Definir resultado,i,j Como Entero
	
	Para i<-1 Hasta 10 Con Paso 1 Hacer		
		Escribir "Tabla de multiplicar de ", i;
		Para j<-1 Hasta 10 Con Paso 1 Hacer
			resultado = j*i
			Escribir j," * ",i," = ", resultado
		Fin Para
	Fin Para
FinFuncion

Algoritmo entregarTablaMultiplicar
	mostrarTablasMultiplicar
	
FinAlgoritmo
