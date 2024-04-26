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
		Escribir "Ingrese una opci�n del men�"
		Escribir "1. Convertir de Celcius a Fahrenheit"
		Escribir "2. Convertir de Fahrenheit a Celcius"
		Escribir "3. Calcular �rea de un tri�ngulo"
		Escribir "4. Calcular �rea de un c�culo"
		Escribir "5. Calcular per�metro de un rect�ngulo"
		Escribir "6. Salir"
		Leer menu
		Si menu > 6 | menu < 1 Entonces
			Escribir "----------Ingrese la opci�n v�lida del men�-------------"
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
					Escribir "Ingrese el valor de la base del tri�ngulo"
					Leer base_1
					Escribir "Ingrese el valor de la altura del tri�ngulo"
					Leer altura_1					
					
					Escribir "El �rea del tri�ngulo es: " calcularAreaTriangulo(base_1, altura_1)
				Caso 4:
					Escribir "Ingrese el valor del radio del c�rculo"
					Leer base_1				
					
					Escribir "El �rea del c�rculo es: " calcularAreaCirculo(base_1)
				Caso 5:
					Escribir "Ingrese el valor de la base del rect�ngulo"
					Leer base_1	
					Escribir "Ingrese el valor de la altura del rect�ngulo"
					Leer altura_1
					
					Escribir "El per�metro del rect�ngulo es " calcularPerimetroRectangulo(base_1, altura_1)
					
				De Otro Modo:
					menu = 6
					Escribir "La sesi�n ha finalizado"
					option = Verdadero
			Fin Segun
		FinSi
	Fin Mientras
	
	
	
FinAlgoritmo
