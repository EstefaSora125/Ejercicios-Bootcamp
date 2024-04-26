Algoritmo limites
    Definir limite, numMayor, num Como Entero
    
    Escribir "Ingrese el límite de números a ingresar:"
    Leer limite
    
    Si limite < 1 Entonces
        Escribir "El límite debe ser mayor o igual a 1"
    Sino      		
        Para i<- 0 Hasta limite Con Paso 1
			Escribir "Ingrese el número " i
			Leer num
			
			Si numMayor<num Entonces
				numMayor = num
			SiNo
				numMayor = numMayor
			FinSi
        FinPara
    FinSi
	
	Escribir "El número mayor es: " numMayor
FinAlgoritmo
