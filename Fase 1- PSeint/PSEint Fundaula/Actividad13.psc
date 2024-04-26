Proceso Ejercicio12
	Definir num1,num2 Como Entero;
	Escribir "Introduce dos números: ";
	Leer num1, num2;
	
	multiplicacion = num1*num2;
	
	Si (multiplicacion>100) Entonces
		Escribir "Mayor de 100 ",multiplicacion;
	SiNo 
		Si (multiplicacion<100) Entonces			
			Escribir "Menor de 100 ",multiplicacion;			
		SiNo
			Escribir "El resultado es 100 ",multiplicacion;
		FinSi	
	FinSi	
FinProceso
