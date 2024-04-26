Funcion resultado<-calcularSuma(num1, num2, num3) 
	Definir resultado Como Real
	resultado = num1 + num2 + num3
FinFuncion


Algoritmo entregarSuma
	Definir num_1, num_2, num_3 Como Real
	
	Escribir  "Ingrese tres números: "
	Leer num_1, num_2, num_3
	Escribir  "El resultado de la suma es: " calcularSuma(num_1, num_2, num_3)
	
FinAlgoritmo
