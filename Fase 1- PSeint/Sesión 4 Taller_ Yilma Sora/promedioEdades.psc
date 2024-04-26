Algoritmo promedioEdades
	Definir mayEdad, menEdad, edad Como Entero
	Definir option Como Caracter
    
    option = "S"
	
	Mientras option = "S" Hacer
		
		Escribir "Ingrese la edad del jugador"
		Leer edad
		
		Si mayEdad<edad && menEdad<edad Entonces
			mayEdad = edad
			menEdad = menEdad
		SiNo
			mayEdad = mayEdad
			menEdad = edad
		FinSi
		
		Escribir "¿Quiere ingresar un jugador? (S/N)"
		Leer option
	Fin Mientras
	
	Escribir "El jugador que tiene más edad es: " mayEdad
	Escribir "El jugador que tiene menos edad es: " menEdad
	
FinAlgoritmo
