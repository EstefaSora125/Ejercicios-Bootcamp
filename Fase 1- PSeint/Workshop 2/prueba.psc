Algoritmo prueba
    Definir arreglo, mitadIz, mitadDer Como Caracter
    Definir i, j, col, fil, op Como Entero
	Definir diviDer, diviIz, divi Como Real
    Definir arrDerecha, arrIzquierda Como Caracter   // Definir aquí
	
    col = 2
    fil = 5
	divi=0
    
    Dimensionar arreglo[fil, col]
    
    arreglo[0,0] = "5"
    arreglo[1,0] = "2"
    arreglo[2,0] = "4"
    arreglo[3,0] = "1"
    arreglo[4,0] = "3"
    
    arreglo[0,1] = "asd"
    arreglo[1,1] = "wgfdg"
    arreglo[2,1] = "asd"
    arreglo[3,1] = "fhg"
    arreglo[4,1] = "hgf"
    
    mostrarLibros(dividir(arreglo,fil), fil, col)
	
FinAlgoritmo

Funcion matrizO<- dividir(matriz, fila)
	Definir tamDerecha, tamIzquierda, i, j,k, columna Como Entero
	Definir matrizO Como Caracter
	Definir arrDerecha, arrIzquierda Como Caracter   // Definir aquí
	
	Dimensionar matrizO[fila, 2]
	
	columna = 2
	i=0
	
	Si fila = 1
		Escribir "El arreglo está ordenado"
	SiNo
		tamDerecha = trunc(fila/2)
		tamIzquierda = fila - tamDerecha
		
		Dimension arrDerecha[tamDerecha, columna]
		Dimension arrIzquierda[tamIzquierda, columna]
		
		
		Para i<-0 Hasta tamDerecha-1 Con Paso 1 Hacer
			Para j<-0 Hasta columna-1 Con Paso 1 Hacer
				arrDerecha[i,j] = matriz[i,j]
			Fin Para
		Fin Para
		
		Para i<-tamDerecha Hasta tamIzquierda-1 Con Paso 1 Hacer
			Para j<-0 Hasta columna-1 Con Paso 1 Hacer
				arrIzquierda[i,j] = matriz[i,j]
			Fin Para
		Fin Para
		
	FinSi
	
	Para k<-0 Hasta fila Con Paso 1 Hacer
		Para j<-0 Hasta columna Con Paso 1 Hacer
			matrizO[i,j] = merge(arrDerecha, tamDerecha, arrIzquierda, tamIzquierda)
		Fin Para
	Fin Para
	
	
	
FinFuncion

Funcion matrizOrdenada<-merge(derecha, tamDere, izquierda, tamIzq)
	Definir matrizOrdenada Como Caracter
    Definir n, i, j, k, m, col Como Entero
	
    col = 2
    i = 0
    j = 0
    n = tamDere + tamIzq
	
    Dimensionar matrizOrdenada[n, col]
	
    Para k <- 0 Hasta n - 1 Con Paso 1 Hacer
        Para m <- 0 Hasta col - 1 Con Paso 1 Hacer
            Si i < tamDere y j < tamIzq Entonces
                Si derecha[i, m] < izquierda[j, m] Entonces
                    matrizOrdenada[k, m] = derecha[i, m]
                    i = i + 1
                SiNo
                    matrizOrdenada[k, m] = izquierda[j, m]
                    j = j + 1
                FinSi
			Sino
				Si i < tamDere Entonces
                matrizOrdenada[k, m] = derecha[i, m]
                i = i + 1
				
            Sino
                matrizOrdenada[k, m] = izquierda[j, m]
                j = j + 1
			FinSi
            FinSi
        FinPara
    FinPara
	
   
FinFuncion

// Función para mostrar libros en desorden
Funcion mostrarLibros(libros, m, NUM_ATRIBUTOS)
    Definir i, j Como Entero
    Para i <- 0 Hasta m - 1 Con Paso 1 Hacer
        Para j <- 0 Hasta NUM_ATRIBUTOS - 1 Con Paso 1 Hacer
            Escribir Sin Saltar libros[i, j], " , "
        Fin Para
        Escribir " "
    Fin Para
FinFuncion
