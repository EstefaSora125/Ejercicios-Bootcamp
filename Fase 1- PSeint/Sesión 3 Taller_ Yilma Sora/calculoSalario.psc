Algoritmo calculoSalario
	Definir nombre Como Caracter;
	Definir salario, horas, SMMLV Como Entero;
	Definir salarioMensual, subsidioTransporte, salarioNeto Como Real;
	
	SMMLV = 737717;
	
	Escribir "Ingrese su nombre"
	Leer nombre
	Escribir "Ingrese su salario básico por hora"
	Leer salario
	Escribir "Ingrese el númeor de horas trabajadas en un mes"
	Leer horas
	
	salarioMensual = salario * horas;
	Si salarioMensual <= (SMMLV*2) Entonces
		subsidioTransporte =  83140;		
	SiNo
		subsidioTransporte =  0;		
	FinSi
	salarioNeto = subsidioTransporte + salarioMensual
	
	Escribir "Señor@ ", nombre
	Escribir "Su salario mensual es: ", salarioMensual
	Escribir "Su subsidio de transporte es: ", subsidioTransporte
	Escribir "Su salario neto es: ", salarioNeto
	
	
FinAlgoritmo
