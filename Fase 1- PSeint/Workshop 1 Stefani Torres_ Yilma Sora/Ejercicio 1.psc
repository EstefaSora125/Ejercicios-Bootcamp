//1. Diseñe un algoritmo que lea tres números diferentes y muestre por pantalla el número que //está
//en el medio de los otros dos. Es decir, que muestre el número que no es el menor ni el //mayor.

//Permite encontrar el número medio entre tres números ingresados
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

Algoritmo entregarNumeroMedio
    Definir num_1, num_2, num_3 Como Caracter
    Definir validate Como Logico    
    
    validate = Falso
    
    Mientras No validate Hacer
        Escribir "Ingrese el primer número"
        Leer num_1
        Escribir "Ingrese el segundo número"
        Leer num_2
        Escribir "Ingrese el tercer número"
        Leer num_3
        
        Si EsNumero(num_1) & EsNumero(num_2) & EsNumero(num_3) Entonces
            Escribir "El número medio es: ", calcularNumeroMedio(ConvertirANumero(num_1), ConvertirANumero(num_2), ConvertirANumero(num_3))
            validate = Verdadero
        Sino
            Escribir "----- Sólo se permite ingresar valores numéricos enteros------"
        FinSi
    FinMientras
FinAlgoritmo