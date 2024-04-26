Algoritmo informeSueldo
    Definir sueldo, anios Como Entero
    Definir pagar Como Real
    
    Escribir "Ingrese el sueldo"
    Leer sueldo
    
    Escribir "Ingrese los años de antigüedad"
    Leer anios
    
    Si sueldo < 500 y anios >= 10 Entonces
		pagar = sueldo + sueldo * 0.2
	SiNo 
		Si sueldo < 500 y anios < 10 Entonces
			pagar = sueldo + sueldo * 0.05
		SiNo
			Si sueldo >= 500
				pagar = sueldo
			FinSi
		FinSi		
	FinSi
	Escribir "Su sueldo a pagar es ", pagar	           
FinAlgoritmo
