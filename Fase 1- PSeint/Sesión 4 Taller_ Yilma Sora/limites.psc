Algoritmo limites
    Definir limite, numMayor, num Como Entero
    
    Escribir "Ingrese el l�mite de n�meros a ingresar:"
    Leer limite
    
    Si limite < 1 Entonces
        Escribir "El l�mite debe ser mayor o igual a 1"
    Sino      		
        Para i<- 0 Hasta limite Con Paso 1
			Escribir "Ingrese el n�mero " i
			Leer num
			
			Si numMayor<num Entonces
				numMayor = num
			SiNo
				numMayor = numMayor
			FinSi
        FinPara
    FinSi
	
	Escribir "El n�mero mayor es: " numMayor
FinAlgoritmo
