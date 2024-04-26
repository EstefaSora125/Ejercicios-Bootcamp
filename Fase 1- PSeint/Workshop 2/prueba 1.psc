//Solicita por consola dato a dato los valores del empleado 
//y finalmente muestra un mensaje de confirmación de guardado
Funcion agregarEmpleados(id,empleado)	
	Escribir "Ingrese la información del empleado"	
	empleado(id,0) = id
	
	Escribir "Ingrese el nombre del empleado"
	Leer empleado(id,1)
	
	Escribir "Ingrese el apellido del empleado"
	Leer empleado(id,3)
	
	Escribir "Ingrese el año de nacimiento del empleado"
	Leer empleado(id,5)		
	validarAnio(empleado(id,5))
	
	Escribir "Ingrese el salario del empleado"
	Leer empleado(id,4)
	validarSalario(empleado(id,4))
	
	Escribir "Ingrese el cargo del empleado"
	Leer empleado(id,2)
	
	Escribir "* La información del empleadose ha guardado *"
FinFuncion


//Solicita por consola dato a dato los valores del empleado, 
//lo modifica en la matriz y finalmente muestra un mensaje 
//de confirmación de guardado
Funcion modificarEmpleado(empleado, id)
	Definir i,j Como Entero	
	
	Para i<-0 Hasta 9 Con Paso 1 Hacer
		Si empleado(i,0) = id
			Escribir "----------------------------------------"
			Escribir "Información actual del empleado"
			Escribir "----------------------------------------"
			
			Para j <- 0 Hasta 5 Con Paso 1 Hacer
                Escribir " ", empleado(i, j)
            FinPara
			
			Escribir "----------------------------------------"
			Escribir "Ingrese la nueva información del empleado"			
			Escribir "----------------------------------------"
			
			Escribir "Ingrese el nuevo nombre"
			Leer empleado(id,1)	
			
			Escribir "Ingrese el nuevo apellido"
			Leer empleado(id,3)
			
			Escribir "Ingrese el nuevo año de nacimiento"
			Leer empleado(id,5)		
			validarAnio(empleado(id,5))
			
			Escribir "Ingrese el nuevo salario"
			Leer empleado(id,4)	
			validarSalario(empleado(id,4))
			
			Escribir "Ingrese el nuevo cargo"
			Leer empleado(id,2)
		FinSi
	Fin Para
	
	Escribir "El empleado se ha actualizado con éxito"
FinFuncion


//Recorre la matriz enviada por parámetros e imprime 
//por consola la lista de los empleados según el formato solicitado
Funcion mostrarListaEmpleados(empleados, fila)
	Definir i, j Como Entero
	
	Escribir "Listado de empleados"
	Escribir "----------------------------------------"
	Para i<-0 Hasta fila-1 Con Paso 1 Hacer
		Para j<-0 Hasta 2 Con Paso 1 Hacer
			Escribir  Sin Saltar empleados(i,j) " , "
		Fin Para
		Escribir " "
	Fin Para	
FinFuncion


//Toma la fila en la posición específicada e imprime por consola el empleado en el formato solicitado.
Funcion mostrarEmpleado(empleados, id)
	Definir i Como Entero	
	
	Para i<-0 Hasta 9 Con Paso 1 Hacer
		Si id = empleados(i, 0) Entonces
			Escribir empleados(id, 1) " " empleados(id, 3), " (" ,calcularEdad(empleados(id, 5)) , " años) , " empleados(id, 2) , " - ", formatoMoneda(empleados(id, 4))
		FinSi
	Fin Para	
FinFuncion

//Ordena la matriz entregada descendentemente según el salario de los empleados e imprime por consola los 5 primeros registros.
Funcion calcularTopSalario(empleados)
	Definir i,j, k Como Entero
	Definir temp Como Caracter
	
    Para i = 0 hasta 9
        Para j = 0 hasta 9
			Si j + 1<9
				Si ConvertirANumero(empleados[j,4]) < ConvertirANumero(empleados[j + 1, 4]) entonces
					Para k = 0 hasta 5
						temp = empleados[j,k]
						empleados[j,k] = empleados[j + 1,k]
						empleados[j + 1,k] = temp
					Fin Para
				Fin Si
			FinSi

        Fin Para
    Fin Para
	mostrarListaEmpleados(empleados, 5)
	
FinFuncion

//Calcula la nómina total de los empleados
Funcion calcularSalarioTotal(empleados)
	Definir i, suma Como Entero
	suma = 0
	Para i<-0 Hasta 9 Con Paso 1 Hacer
		suma = suma  + ConvertirANumero(empleados[i, 4])	
	Fin Para	
	Escribir  "El la nomina mensual es: ", formatoMoneda(ConvertirATexto(suma))	
FinFuncion

//Permite validar que sólo se ingresen valores numéricos y no caracteres
Funcion esNumer <-EsNumero(dato)
    Definir esNumer Como Logico
	Definir i Como Entero
	
    esNumer <- Verdadero
    
    
    Para i<-0 Hasta Longitud(dato)-1 Con Paso 1 Hacer
        Si (Subcadena(dato, i, i) < "0" | Subcadena(dato, i, i) > "9") Entonces
            esNumer <- Falso
        FinSi
    FinPara
FinFuncion

//Permite calcular la Edad de un empleado
Funcion edad<-calcularEdad(anio)
	Definir edad, anioActual Como Entero
	anioActual = 2024
	edad = anioActual-ConvertirANumero(anio)
FinFuncion

//Permite dar formato monetairo de un número
Funcion monedaFormato<-formatoMoneda(moneda)
	Definir monedaFormato Como Caracter
    Definir cont, i Como Entero
	
    cont = 0
    monedaFormato = ""
	
    Si Longitud(moneda) > 3 Entonces
        Para i <- Longitud(moneda) - 1 Hasta 0 Con Paso -1 Hacer
            cont = cont + 1
            monedaFormato = Concatenar(Subcadena(moneda, i, i), monedaFormato)
            Si cont MOD 3 = 0 Y i > 0 Entonces
                monedaFormato = Concatenar(".", monedaFormato)
            FinSi
        FinPara
        monedaFormato = Concatenar("$", monedaFormato)
    Sino
        monedaFormato = Concatenar("$", moneda)
    FinSi	
FinFuncion

//Excepción para el año
Funcion validarAnio(anio)			
	Mientras  !EsNumero(anio) | (ConvertirANumero(anio)<1800 | ConvertirANumero(anio)>2024) Hacer
		Escribir "ERROR: Debe ingresar datos válidos"
		Leer anio	
	FinMientras	
FinFuncion

//Excepción para el salario
Funcion validarSalario(salario)			
	Mientras  !EsNumero(salario) Hacer
		Escribir "ERROR: Debe ingresar un salario válido"
		Leer salario	
	FinMientras	
FinFuncion


Algoritmo main
	Definir listadoEmpleados,idRev,option Como Caracter
	Definir i, j, fila, columna Como Entero
	Definir id Como Real
	Definir validate Como Logico    
    
    validate = Falso	
	fila = 10
	columna = 6
	id = -1
	Dimensionar listadoEmpleados[fila, columna]	
	
	Mientras !validate Hacer
		Escribir "Bienvenid@ a Sistema de Gestión de nómina para micro-empresas, seleccione una opción"
		Escribir ""
		Escribir "1) Agregar empleados"
		Escribir "2) Modificar empleados"
		Escribir "3) Listado de empleados"
		Escribir "4) Consultar empleado"
		Escribir "5) Ver empleados con más salario."
		Escribir "6) Calcular la nónima mensual"
		Escribir "7) Salir"
		Leer option
		
		Si EsNumero(option) Entonces
			Segun ConvertirANumero(option) Hacer
				Caso 1:					
					id = id+1						
					
					Si id>9 Entonces
						Escribir "No puede ingresa más de 10 empleados"
					SiNo	
						listadoEmpleados[id, 0] = ConvertirATexto(id)	
						agregarEmpleados(ConvertirATexto(id), listadoEmpleados)	
					FinSi
				Caso 2:
					Escribir "Ingrese el id del empleado a modificar"
					Leer idRev
					Si EsNumero(idRev) Entonces						
						Si id<=fila-1 Entonces
							Escribir "La lista debe tener la información de 10 empleados"
						SiNo
							Si ConvertirANumero(idRev)>=id  Entonces
								Escribir "El ID ingresado no se encuentra registrado"
							SiNo
								modificarEmpleado(listadoEmpleados, idRev)	
							FinSi
						FinSi
						
					SiNo
						Escribir "Sólo se permite la entrada de valores numéricos"
						
					FinSi	
					
				Caso 3:
					Si id<=fila-1 Entonces
						Escribir "La lista debe tener la información de 10 empleados"
					SiNo
						mostrarListaEmpleados(listadoEmpleados,10)		
					FinSi						
				Caso 4: 
					Escribir "Ingrese el id del empleado que requiera"
					Leer idRev
					Si EsNumero(idRev) Entonces
						Si id<=fila-1 Entonces
							Escribir "La lista debe tener la información de 10 empleados"
						SiNo
							Si ConvertirANumero(idRev)>=id  Entonces
								Escribir "El ID ingresado no se encuentra registrado"
							SiNo
								mostrarEmpleado(listadoEmpleados, idRev)
							FinSi
						FinSi						
					SiNo
						Escribir "Sólo se permite la entrada de valores numéricos"
						
					FinSi		
					
				Caso 5: 	
					
					Si id<=fila-1 Entonces
						Escribir "La lista debe tener la información de 10 empleados"
					SiNo
						calcularTopSalario(listadoEmpleados)		
					FinSi					
				Caso 6:
					Si id<=fila-1 Entonces
						Escribir "La lista debe tener la información de 10 empleados"
					SiNo
						calcularSalarioTotal(listadoEmpleados)		
					FinSi
				Caso 7:
					validate=Verdadero
				De Otro Modo:
					Escribir "Error: Debe ingresar una opción válida"
			Fin Segun
			Escribir "----------------------------------------"
		SiNo
			Escribir "Debe ingresar valore numéricos"
		FinSi
	Fin Mientras	
FinAlgoritmo
	