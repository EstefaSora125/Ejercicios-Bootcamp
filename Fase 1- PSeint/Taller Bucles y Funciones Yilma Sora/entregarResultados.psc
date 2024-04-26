Funcion fahrenheit<-convertirCelciusFarenheit(num)
	Definir fahrenheit Como Real
	fahrenheit = num * 33.8
FinFuncion

Funcion celcius<-convertirFarenheitCelcius(num)
	Definir celcius Como Real
	celcius = num/33.8
FinFuncion

Funcion areaT<-calcularAreaTriangulo(base, altura)
	Definir areaT Como Real
	areaT = (base*altura)/2
FinFuncion

Funcion areaC<-calcularAreaCirculo(radio)
	Definir areaC Como Real
	areaC = 3.1416*(radio^2)
FinFuncion

Funcion perimetro<-calcularPerimetroRectangulo(base, altura)
	Definir perimetro Como Real
	perimetro = base*2 + altura*2
FinFuncion


Algoritmo entregarResultados
	Definir option Como Logico
	Definir menu, grados, base_1, altura_1 Como Real
	
	option = Falso
	
	Mientras No option Hacer
		Escribir "Ingrese una opción del menú"
		Escribir "1. Convertir de Celcius a Fahrenheit"
		Escribir "2. Convertir de Fahrenheit a Celcius"
		Escribir "3. Calcular área de un triángulo"
		Escribir "4. Calcular área de un cículo"
		Escribir "5. Calcular perímetro de un rectángulo"
		Escribir "6. Salir"
		Leer menu
		Si menu > 6 | menu < 1 Entonces
			Escribir "----------Ingrese la opción válida del menú-------------"
		SiNo
			Segun menu Hacer
				Caso 1:
					Escribir "Ingrese el valor de los grados Celcius"
					Leer grados
					Escribir grados " Celcius equivalen a ", convertirCelciusFarenheit(grados) " grados Fahrenheit"
				Caso 2:
					Escribir "Ingrese el valor de los grados Fahrenheit"
					Leer grados
					Escribir grados " Fahrenheit equivalen a ", convertirFarenheitCelcius(grados) " grados Celcius"
				Caso 3:
					Escribir "Ingrese el valor de la base del triángulo"
					Leer base_1
					Escribir "Ingrese el valor de la altura del triángulo"
					Leer altura_1					
					
					Escribir "El área del triángulo es: " calcularAreaTriangulo(base_1, altura_1)
				Caso 4:
					Escribir "Ingrese el valor del radio del círculo"
					Leer base_1				
					
					Escribir "El área del círculo es: " calcularAreaCirculo(base_1)
				Caso 5:
					Escribir "Ingrese el valor de la base del rectángulo"
					Leer base_1	
					Escribir "Ingrese el valor de la altura del rectángulo"
					Leer altura_1
					
					Escribir "El perímetro del rectángulo es " calcularPerimetroRectangulo(base_1, altura_1)
					
				De Otro Modo:
					menu = 6
					Escribir "La sesión ha finalizado"
					option = Verdadero
			Fin Segun
		FinSi
	Fin Mientras
	
	
	
FinAlgoritmo
