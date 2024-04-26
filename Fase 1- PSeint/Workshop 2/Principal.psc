SubProceso MergeSort(matriz, inicio, fi)
    Si inicio < fi Entonces
        medio = (inicio + fi) / 2
        MergeSort(matriz, inicio, medio)
        MergeSort(matriz, medio + 1, fi)
        Merge(matriz, inicio, medio, fi)
    FinSi
FinSubProceso

SubProceso Merge(matriz, inicio, medio, fi)
	Definir matrizIzquierda, matrizDerecha Como Caracter
    n1 = medio - inicio + 1
    n2 = fi- medio
    
    Dimension matrizIzquierda[n1]
	Dimension matrizDerecha[n2]
    
    Para i = 1 Hasta n1
        matrizIzquierda[i] = matriz[inicio + i - 1]
    FinPara
    
    Para j = 1 Hasta n2
        matrizDerecha[j] = matriz[medio + j]
    FinPara
    
    i = 1
    j = 1
    k = inicio
    
    Mientras i <= n1 y j <= n2 Hacer
        Si matrizIzquierda[i] <= matrizDerecha[j] Entonces
            matriz[k] = matrizIzquierda[i]
            i = i + 1
        Sino
            matriz[k] = matrizDerecha[j]
            j = j + 1
        FinSi
        k = k + 1
    FinMientras
    
    Mientras i <= n1 Hacer
        matriz[k] = matrizIzquierda[i]
        i = i + 1
        k = k + 1
    FinMientras
    
    Mientras j <= n2 Hacer
        matriz[k] = matrizDerecha[j]
        j = j + 1
        k = k + 1
    FinMientras
FinSubProceso

Proceso Principal
	Definir tamanoMatriz, i Como Entero	
    Definir matriz Como Caracter
    Dimensionar matriz[tamanoMatriz]
    Escribir "Ingrese el tamaño de la matriz:"
    Leer tamanoMatriz
    
    Para i = 1 Hasta tamanoMatriz
        Escribir "Ingrese el elemento ", i
        Leer matriz[i]
    FinPara
    
    MergeSort(matriz, 1, tamanoMatriz)
    
    Escribir "Matriz ordenada:"
    Para i = 1 Hasta tamanoMatriz
        Escribir matriz[i]
    FinPara
FinProceso



