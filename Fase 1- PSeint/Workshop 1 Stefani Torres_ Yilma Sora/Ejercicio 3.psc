//3. Diseñe un algoritmo que lea el sueldo de cinco empleados y muestre el sueldo promedio.
Funcion promedio<-definirPromedio(pro)
	Definir i Como Entero
	Definir promedio Como Real
	promedio = 0
	
	Para i=0 Hasta 4 Con Paso 1 Hacer
		promedio = promedio + pro[i]
	Fin Para
	
	promedio = promedio/5
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

Algoritmo sueldoPromedio
	
	Definir pro, j Como Entero
	Definir operacionValida Como Logico
	Definir sueldo Como Caracter
	Dimension pro[5]
	
	operacionValida <- Falso
	Mientras No operacionValida Hacer
		Para j = 0 Hasta 4 Con Paso 1 Hacer
			Escribir "Ingrese el sueldo del empleado " j+1
			leer sueldo
			
			Si EsNumero(sueldo) Entonces
				operacionValida <- Verdadero
				pro[j] = ConvertirANumero(sueldo)
			SiNo
				Escribir "Ingrese un sueldo valido."
				j = 4
			Fin Si
		Fin Para
		
	Fin Mientras
	

	
	Escribir "El sueldo promedio es: ", definirPromedio(pro)
	
FinAlgoritmo
