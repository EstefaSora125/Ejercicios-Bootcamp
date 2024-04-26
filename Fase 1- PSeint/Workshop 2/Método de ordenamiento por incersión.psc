//M�todo de Ordenamiento Inserci�n


//Funci�n para agregar libros
Funcion agregarLibro(id,libro)	
	Escribir "Ingrese la informaci�n del libro"	
	libro(id,0) = id
	
	Escribir "Ingrese el t�tulo del libro"
	Leer libro(id,1)
	
	Escribir "Ingrese el a�o de publicaci�n del libro"
	Leer libro(id,2)
	
FinFuncion


// Funci�n para mostrar libros en desorden
Funcion mostrarLibros(libros, m, NUM_ATRIBUTOS)
	Definir i, j Como Entero
    Para i <- 0 Hasta m - 1 Con Paso 1 Hacer
        Para j <- 0 Hasta NUM_ATRIBUTOS - 1 Con Paso 1 Hacer
            Escribir Sin Saltar libros[i, j], " , "
        Fin Para
        Escribir " "
    Fin Para
FinFuncion


//Funci�n para mostrar libros ordenados por t�tulo de forma descendente 
Funcion mostrarLibrosOrdenados(libros, tam, NUM_ATRIBUTOS)	
	Definir i, j, clave Como Entero	
	Para i <- 1 Hasta tam-1 Con Paso 1 Hacer
        clave <- i
        j <- i - 1
        Mientras j >= 0 Hacer
            Si libros[clave, 1] < libros[j, 1] Entonces
                intercambiarFilas(libros, clave, j)
            FinSi
            j <- j - 1
        Fin Mientras
		
    Fin Para	
	mostrarLibros(libros, tam, NUM_ATRIBUTOS)
FinFuncion

SubAlgoritmo intercambiarFilas(matriz, fila1, fila2)
    Definir j Como Entero
	Definir temp Como Car�cter
    Para j <- 0 Hasta 2 Hacer        
        temp <- matriz[fila1, j]
        matriz[fila1, j] <- matriz[fila2, j]
        matriz[fila2, j] <- temp
    FinPara
FinSubAlgoritmo

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


Algoritmo main
	Definir listadoLibros, ev, option Como Caracter
	Definir i, j, id, MAX_LIBROS, NUM_ATRIBUTOS Como Entero	
	Definir operacionValida Como Logico
	
	// Constantes
	MAX_LIBROS = 3
	NUM_ATRIBUTOS = 3
	id = 0
	
	Dimensionar listadoLibros[MAX_LIBROS, NUM_ATRIBUTOS]
	
	operacionValida <- Falso
	Mientras No operacionValida Hacer
		Escribir "        "
		Escribir "Bienvenido a la biblioteca de Tefa, seleccione alguna de las siguientes opciones :3"
		Escribir "1. Agregar un nuevo libro"
		Escribir "2. Ver listado de libros"
		Escribir "3. Ver listado de libros organizados por t�tulo"
		Escribir "4. Salir"
		Leer option
		
		Si EsNumero(option) Entonces
			Segun option Hacer
				Caso "1":					
					Escribir "Agregar libro"					
					Si id <=MAX_LIBROS-1 Entonces
						listadoLibros[id, 0] = ConvertirATexto(id)
						agregarLibro(ConvertirATexto(id), listadoLibros)				
						id = id+1
					SiNo
						Escribir "---------Lo sentimos, s�lo puede ingresar la informaci�n de ", MAX_LIBROS " libros-------"
					FinSi
					operacionValida <- Falso
				Caso "2":
					Si id<2 Entonces
						Escribir "---------Lo sentimos, debe ingresar la informaci�n de ", MAX_LIBROS "libros -----"	
					SiNo
						mostrarLibros(listadoLibros, MAX_LIBROS, NUM_ATRIBUTOS)
					FinSi
					
				Caso "3":
					Si id<2 Entonces
						Escribir "---------Lo sentimos, debe ingresar la informaci�n de ", MAX_LIBROS "libros -----"	
					SiNo
						mostrarLibrosOrdenados(listadoLibros, MAX_LIBROS, NUM_ATRIBUTOS)
					FinSi	
				Caso "4": 					
					Escribir "La sesi�n ha finalizado"
					operacionValida<-Verdadero
					
				De Otro Modo:
					Escribir "Debe ingresar una opci�n v�lida"
			Fin Segun			
			
		SiNo
			Escribir "Ingrese un valor valido"
		Fin Si
	Fin Mientras	
	
FinAlgoritmo