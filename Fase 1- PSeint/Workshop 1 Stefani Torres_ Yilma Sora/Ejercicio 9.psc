//9. Escriba un algoritmo que lea un n�mero entero n y muestre su factorial.

Funcion factorial<-calcularFactorial(num)
	Definir factorial, multiplica, i Como Entero
	factorial =1
	
	Para i<-num Hasta 1 Con Paso -1 Hacer
		factorial= factorial *i  
	Fin Para
	
FinFuncion

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

Algoritmo entregarFactorial
	Definir num_1 Como Caracter
    Definir validate Como Logico    
    
    validate = Falso
    
    Mientras No validate Hacer
        Escribir "Ingrese el primer n�mero"
        Leer num_1
        
        Si EsNumero(num_1) Entonces
            Escribir "El valor factorial de " num_1 " es ", calcularFactorial(ConvertirANumero(num_1))
            validate = Verdadero
        Sino
            Escribir "----- S�lo se permite ingresar valores num�ricos enteros------"
        FinSi
    FinMientras
	
FinAlgoritmo
