Proceso NotasEstudiantes
    Definir nota, notaMinima, notaMaxima, cantidadMaxima, sumaNotas, promedio como Real
	Definir cantidadEstudiantes como Entero
	
    Escribir "Ingrese la cantidad de estudiantes en el grupo:"
    Leer cantidadEstudiantes
	
    Si cantidadEstudiantes <= 0 Entonces
        Escribir "El grupo debe tener por lo menos un integrante."
    Sino
        Escribir "Ingrese las notas de los estudiantes:"
        
        Leer nota
		
        notaMinima <- nota
        notaMaxima <- nota
        cantidadMaxima <- 1
        sumaNotas <- nota
        
        Para i <- 2 Hasta cantidadEstudiantes Hacer
            Leer nota
            sumaNotas <- sumaNotas + nota
            
            Si nota < notaMinima Entonces
                notaMinima <- nota
            FinSi
            
            Si nota > notaMaxima Entonces
                notaMaxima <- nota
                cantidadMaxima <- 1
            Sino
                Si nota = notaMaxima Entonces
                    cantidadMaxima <- cantidadMaxima + 1
                FinSi
            FinSi
        FinPara
        
        promedio <- sumaNotas / cantidadEstudiantes
        
        Escribir "Nota mínima:", notaMinima
        Escribir "Nota máxima:", notaMaxima
        Escribir "Número de estudiantes con nota máxima:", cantidadMaxima
        Escribir "Promedio del grupo:", promedio
    FinSi
FinProceso
