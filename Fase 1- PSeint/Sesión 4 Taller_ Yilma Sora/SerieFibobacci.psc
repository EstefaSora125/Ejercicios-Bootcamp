Algoritmo SerieFibonacci
    Definir limite, i, num1, num2, suma Como Entero
    
    Escribir "Ingrese el l�mite para la serie Fibonacci:"
    Leer limite
    
    Si limite < 1 Entonces
        Escribir "El l�mite debe ser mayor o igual a 1"
    Sino
        num1 = 0
        num2 = 1
        Escribir "Serie Fibonacci hasta el l�mite ", limite, ":"
        Escribir num1
        Escribir num2
        
        Para i = 3 Hasta limite Con Paso 1
            suma = num1 + num2
            Escribir suma
            num1 = num2
            num2 = suma
        FinPara
    FinSi
FinAlgoritmo
