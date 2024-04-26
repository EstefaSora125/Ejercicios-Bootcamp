Algoritmo facturaInternet
	Definir dni, tipoServicio, valorPrimerCombo, valorSegundoCombo,valorTercerCombo Como Entero
	Definir total como Real;
	
	valorPrimerCombo = 750;
	valorSegundoCombo = 930;
	valorTercerCombo = 1200;
		
	Escribir  "Ingrese su DNI"
	Leer dni
	
	Escribir "Seleccione su tipo de servicio:"
	Escribir "1. Internet de 30 megas"
	Escribir "2. Internet de 50 megas"
	Escribir "3. Internet de 100 megas"
	Leer tipoServicio
	
	Segun tipoServicio Hacer
		caso 1:
			total  = valorPrimerCombo - (valorPrimerCombo * 0.1)
		caso 2:
			total  = valorSegundoCombo - (valorSegundoCombo * 0.05)
		caso 3:
			total = valorTercerCombo
		De Otro Modo:
			Escribir "Ha ingresado un valor no permitido"
	FinSegun
	Escribir "El valor de su factura es de ", total
FinAlgoritmo
