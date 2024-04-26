Proceso Ejercicio12
	Definir num1,num2 Como Entero;
	Escribir "Introduce dos números: ";
	Leer num1, num2;
	
	suma = num1+num2;
	
	Si (suma>5) Entonces
		Escribir "El resultado de la suma es ",suma;
	SiNo 
		Si(num1 < 5 & num1<num2) Entonces
			Escribir "No es posible hacer el proceso porque ",num1, " es menor";
		SiNo
			Si(num2 < 5 & num2<num1) Entonces
				Escribir "No es posible hacer el proceso porque ",num2, " es menor";
			FinSi
				
		FinSi
		
	FinSi
	
FinProceso
