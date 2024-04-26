//10. Escriba Dise�e un algoritmo que lea n�meros enteros hasta que encuentre uno que //cumpla las 
//siguientes condiciones:

//Permite validar que s�lo se ingresen valores num�ricos y no caracteres
Funcion esNumer <-EsNumero(dato)
	
    Definir esNumer Como Logico
    esNumer <- Verdadero
    Definir i Como Entero
    
    Para i<-0 Hasta Longitud(dato)-1 Con Paso 1 Hacer
        Si (Subcadena(dato, i, i) < "0" | Subcadena(dato, i, i) > "9") Entonces
            esNumer <- Falso
        FinSi
    FinPara
FinFuncion

Algoritmo sin_titulo
	
	Definir num Como Caracter
	Definir operacionValida Como Logico
	
	//Validaci�n de primer valor
	operacionValida <- Falso
	Mientras No operacionValida Hacer
		
		Escribir "Ingrese un n�mero entero"
		Leer num
		
		Si EsNumero(num) Entonces
			
			Si ConvertirANumero(num) < 10000 & ConvertirANumero(num) > 100 & ConvertirANumero(num) MOD 5 <> 0 & ConvertirANumero(num) MOD 2 = 0 Entonces
				Escribir "Su n�mero cumple con las condiciones"
				operacionValida <- Verdadero
			SiNo
				Escribir "Su n�mero no cumple con las condiciones"
			Fin Si
		SiNo
			Escribir "No es un n�mero entero"
		Fin Si
		
		
	Fin Mientras
	
FinAlgoritmo