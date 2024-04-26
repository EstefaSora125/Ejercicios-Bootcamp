//4. Diseñe un algoritmo que lea un numero e indique si es negativo o está entre cero y //diez inclusive, 
//o entre 11 y 20 inclusive, o entre 21 y 30 inclusive, o entre 31 y 50 inclusive o es //mayor que 50.



//Clasifica el número ingresado de acuerdo en la sección en
// la que se encuentre
Funcion clasificacion <-identificarClasificacionNumero (num)
	Definir clasificacion Como Caracter
	Si num< 0 Entonces
		clasificacion = "El número es negativo"
	SiNo
		Si num <=10 
			clasificacion = "El número está entre 0 y 10"
		SiNo
			Si num <=20 
				clasificacion = "El número está entre 11 y 20"	
			SiNo
				Si num <=30 
					clasificacion = "El número está entre 21 y 30"
				SiNo
					Si num <=50 
						clasificacion = "El número está entre 31 y 50"
					SiNo
						clasificacion = "El número es mayor a 50"						
					FinSi
				FinSi
				
			FinSi
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

Algoritmo entregarClasificacion
	Definir num1 Como Caracter
	Definir validate Como Logico 
	
	validate = Falso
    
    Mientras No validate Hacer
        Escribir "Ingrese un número"
		Leer num1
        
        Si EsNumero(num1)  Entonces
            Imprimir  identificarClasificacionNumero(ConvertirANumero(num1))
            validate = Verdadero
        Sino
            Escribir "----- Sólo se permite ingresar valores numéricos enteros------"
        FinSi
    FinMientras
FinAlgoritmo
