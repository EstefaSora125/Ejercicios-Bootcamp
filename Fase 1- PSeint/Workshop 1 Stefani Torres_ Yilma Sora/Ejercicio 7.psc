//7. Diseñe un algoritmo que lea un numero entero y escriba un mensaje que indique si el //número es 
//par o impar

Funcion numeroParImpar<-definirNumeroParImpar(num)
	Definir numeroParImpar Como Caracter
	
	Si num MOD 2 == 0 Entonces
		numeroParImpar = " es un número par"
	SiNo
		numeroParImpar = " es un número impar"
	Fin Si
	
Fin Funcion

//Permite validar que sólo se ingresen valores numéricos y no caracteres
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

Algoritmo identificarNumero
	
	Definir operacionValida Como Logico
	Definir num Como Caracter
	
	operacionValida <- Falso
	Mientras No operacionValida Hacer
		Escribir "Ingrese un número"
		Leer num
		
		Si EsNumero(num) Entonces
			operacionValida <- Verdadero
		SiNo
			Escribir "Ingrese un valor valido"
		Fin Si
	Fin Mientras
	
	Escribir ConvertirANumero(num), definirNumeroParImpar(ConvertirANumero(num))
	
FinAlgoritmo
