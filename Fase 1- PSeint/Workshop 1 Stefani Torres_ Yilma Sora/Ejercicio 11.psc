//11. Escriba un algoritmo que lea un entero n y muestre un cuadrado formado por n filas //con n
//asteriscos. Por ejemplo, si su algoritmo lee el n�mero 8, este debe mostrar por pantalla //el siguiente
//patr�n:

//Se crea la matriz con la cantidad de asteriscos que se le ingresen 
//por consola
Funcion mostrarCuadrado(n)
	Definir matriz Como Caracter
	Definir i, j Como Entero
	
	Dimension matriz[n, n]
	
	Para i<-0 Hasta n-1 Con Paso 1 Hacer		
		Para j<-0 Hasta n-1 Con Paso 1 Hacer
			matriz[i, j] = "*"
			Escribir matriz[i, j] , "  " Sin Saltar		
		Fin Para
		Escribir "  "
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

//Llama la funci�n de mostrarCuadrado para imprimir lo que se llama
Algoritmo entregarCuadrado
    Definir num_1 Como Caracter
    Definir validate Como Logico    
    
    validate = Falso
    
    Mientras No validate Hacer
        Escribir "Ingrese el tama�o de la matriz"
        Leer num_1
        
        Si EsNumero(num_1) Entonces
           mostrarCuadrado(ConvertirANumero(num_1))
            validate = Verdadero
        Sino
            Escribir "----- S�lo se permite ingresar valores num�ricos enteros------"
        FinSi
    FinMientras
FinAlgoritmo