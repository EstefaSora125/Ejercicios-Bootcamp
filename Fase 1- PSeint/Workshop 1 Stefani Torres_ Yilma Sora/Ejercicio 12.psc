//12. Escriba un algoritmo que lea un entero n y muestre n asteriscos en la primera fila, //n-1
//asteriscos en la segunda fila y as� sucesivamente.


//Se crea la matriz con la cantidad de asteriscos que se le ingresen 
//por consola
Funcion mostrarCuadrado(n)
	Definir matriz Como Caracter
	Definir i, j, m, tamanio Como Entero
	Dimension matriz[n, n]
	
	tamanio = n-1
	Para i<-0 Hasta n-1 Con Paso 1 Hacer		
		Para j<-0 Hasta n-1 Con Paso 1 Hacer
			Si j <= tamanio
				matriz[i, j] = "*"	
			SiNo
				matriz[i, j] = " "
			FinSi			
			Escribir matriz[i, j], "  " Sin Saltar			
		Fin Para
		tamanio = tamanio-1
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