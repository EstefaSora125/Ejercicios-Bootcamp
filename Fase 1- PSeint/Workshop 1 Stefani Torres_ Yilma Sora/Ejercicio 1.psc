//1. Dise�e un algoritmo que lea tres n�meros diferentes y muestre por pantalla el n�mero que //est�
//en el medio de los otros dos. Es decir, que muestre el n�mero que no es el menor ni el //mayor.

//Permite encontrar el n�mero medio entre tres n�meros ingresados
Funcion numeroMedio <- calcularNumeroMedio(num1, num2, num3)
    Definir numeroMedio Como Real
	
    Si (num2 <= num1 & num1 <= num3) | (num3 <= num1 & num1 <= num2) Entonces
        numeroMedio <- num1
	SiNo
		Si (num1 <= num2 & num2 <= num3) | (num3 <= num2 & num2 <= num1) Entonces
			numeroMedio <- num2
		Sino
			numeroMedio <- num3
		FinSi    
	FinSi
	
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

Algoritmo entregarNumeroMedio
    Definir num_1, num_2, num_3 Como Caracter
    Definir validate Como Logico    
    
    validate = Falso
    
    Mientras No validate Hacer
        Escribir "Ingrese el primer n�mero"
        Leer num_1
        Escribir "Ingrese el segundo n�mero"
        Leer num_2
        Escribir "Ingrese el tercer n�mero"
        Leer num_3
        
        Si EsNumero(num_1) & EsNumero(num_2) & EsNumero(num_3) Entonces
            Escribir "El n�mero medio es: ", calcularNumeroMedio(ConvertirANumero(num_1), ConvertirANumero(num_2), ConvertirANumero(num_3))
            validate = Verdadero
        Sino
            Escribir "----- S�lo se permite ingresar valores num�ricos enteros------"
        FinSi
    FinMientras
FinAlgoritmo