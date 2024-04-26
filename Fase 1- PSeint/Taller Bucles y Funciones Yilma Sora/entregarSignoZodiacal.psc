Funcion signo<-determinarSignoZodiacal(dia, mes)
	Definir  signo Como Caracter
    Segun mes
			caso 2:
            Si dia >= 20 entonces
                signo = "Acuario"
            Sino
                signo = "Capricornio"
            FinSi
			caso 3:
            Si dia <= 20 entonces
                Devolver = "Piscis"
            Sino
                Devolver = "Aries"
            FinSi
			caso 4:
            Si dia <= 20 entonces
                signo = "Aries"
            Sino
                signo = "Tauro"
            FinSi
			caso 5:
            Si dia <= 20 entonces
                signo = "Tauro"
            Sino
                signo = "Géminis"
            FinSi
			caso 6:
            Si dia <= 20 entonces
                signo = "Géminis"
            Sino
                signo = "Cáncer"
            FinSi
			caso 7:
            Si dia <= 22 entonces
                signo = "Cáncer"
            Sino
                signo = "Leo"
            FinSi
			caso 8:
            Si dia <= 22 entonces
                signo = "Leo"
            Sino
                signo = "Virgo"
            FinSi
			caso 9:
            Si dia <= 22 entonces
                signo = "Virgo"
            Sino
                signo = "Libra"
            FinSi
			caso 10:
            Si dia <= 22 entonces
                signo ="Libra"
            Sino
                signo = "Escorpio"
            FinSi
			caso 11:
            Si dia <= 22 entonces
                signo = "Escorpio"
            Sino
                signo = "Sagitario"
            FinSi
			caso 12:
            Si dia <= 21 entonces
                signo = "Sagitario"
            Sino
                signo = "Capricornio"
            FinSi
    FinSegun
FinFuncion

Algoritmo entregarSignoZodiacal
	Definir mes_1, dia_1 Como Real
	Definir control Como Logico
	control = Falso
	
	
	Mientras No control Hacer
		Escribir "Ingrese el día de su nacimiento:"
		Leer dia_1
		Escribir "Ingrese el mes de su nacimiento (en números):"
		Leer mes_1
		
		Si dia_1<1 | dia_1>30 Entonces
			Escribir "Ingrese un día válido"
		SiNo
			Si mes_1>12 | mes_1 <1 Entonces
				Escribir "Ingrese un mes válido"
				
			SiNo
				Escribir "Su signo zodiacal es: ", determinarSignoZodiacal(dia_1, mes_1)
				control = Verdadero
			FinSi
		FinSi
					
	Fin Mientras
FinAlgoritmo
