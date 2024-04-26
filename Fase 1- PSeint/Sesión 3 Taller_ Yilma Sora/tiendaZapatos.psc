Algoritmo tiendaZapatos
	Definir  valorCompra Como Entero;
	Definir total Como Real;
	
	Escribir  "Ingrese el valor total de la compra"
	Leer valorCompra
	
	Si valorCompra >= 100000 Entonces
		total = valorCompra - (valorCompra * 0.5)
		Escribir "El valor total de su compra es ", total, " con un descuento del 50% aplicado"
	SiNo
		total = valorCompra - (valorCompra * 0.1)
		Escribir "El valor total de su compra es ", total, " con un descuento del 10% aplicado"
	FinSi
FinAlgoritmo
