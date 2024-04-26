Algoritmo ahorros
	Definir monto, aporte, ahorro Como Real;
	Definir personas, cantAportes, noAportes Como Entero;
	Definir option Como Caracter;
	
	option = "S";
	ahorro = 0;

	Escribir "Ingrese el monto a recolectar"
	Leer monto
	
	Escribir "Ingrese el número de personas"
	Leer personas
	
	Si monto <= 0 Entonces
		Escribir "El monto es menor o igual a cero"
	SiNo
		Si personas <=0  Entonces
			Escribir "No hay personas a quién pedirles un aporte"
		SiNo
			Mientras option = "S" && ahorro <= monto Hacer	
				Escribir "Ingrese el aporte a realizar "
				Leer aporte
					
				ahorro = ahorro + aporte
				cantAportes = cantAportes+1;
					
				Escribir "¿Quiere hacer un aporte? (S/N)"
				Leer option		
			Fin mIENTRAS	
			
			noAportes = personas - cantAportes
			
			Si (cantAportes-personas) > 0 Entonces
				Escribir "Hubo " noAportes " de personas que NO aportaron"
				Escribir "Hubo " cantAportes " de personas que aportaron"
				Escribir "El monto aportado es: ", ahorro
			SiNo
				Escribir "Hubo " noAportes " de personas que NO aportaron"
				Escribir "Hubo " cantAportes " de personas que aportaron"
				Escribir "El monto aportado es: ", ahorro
			FinSi
			
			Si ahorro >= monto Entonces
				Escribir "Se logró recolectar el monto definido"
			SiNo 
				Escribir "Se NO logró recolectar el monto definido"
			FinSi
			
		FinSi	
	FinSi	
FinAlgoritmo
