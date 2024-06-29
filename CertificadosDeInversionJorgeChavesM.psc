	Algoritmo CertificadosDeInversion
		// Declaraci�n de variables
		Definir nombreInversionista, fechaEmisionCertificado, opcion como Cadena;
		Definir moneda, montoInversion, multiple, totalInversionColones, totalInversionDolares, cantidadInversiones como Entero;
		Definir periodicidadPago, plazoMeses como Entero;
		Definir tasaInteres, montoIntereses, montoPagarCupon, totalInteresesColones, totalInteresesDolares  como Real;
		Definir cantidadCupones como Entero;
		Definir tipoMoneda, periodoPago como Cadena;
		
		// Inicializaci�n de variables
		totalInversionColones <- 0;
		totalInversionDolares <- 0;
		totalInteresesColones <- 0;
		totalInteresesDolares <- 0;
		cantidadInversiones <- 0;
		
		Escribir "Bienvenido a Inversiones Totales S.A.";
		
		Repetir
			// Solicitar informaci�n del certificado de inversi�n
			Escribir "Ingrese el nombre del inversionista:";
			Leer nombreInversionista;
			
			Escribir "Ingrese la fecha de emisi�n del certificado:";
			Leer fechaEmisionCertificado;
			
			Escribir "Seleccione el tipo de moneda (1-Colones, 2-D�lares):";
			Leer moneda;
			// Validar moneda
			Mientras moneda <> 1 y moneda <> 2 Hacer
				Escribir "Valor inv�lido. Seleccione 1 para colones o 2 para d�lares:";
				Leer moneda;
			FinMientras;
			
			// Validar monto de inversi�n
			Si moneda = 1 Entonces
				Escribir "Ingrese el monto de inversi�n (m�nimo 100 000 colones):";
				Leer montoInversion;
				Mientras montoInversion < 100000 Hacer
					Escribir "Monto inv�lido. Ingrese un monto mayor o igual a 100 000 colones:";
					Leer montoInversion;
				FinMientras
			Sino
				Escribir "Ingrese el monto de inversi�n (m�nimo 1000 d�lares):";
				Leer montoInversion;
				Mientras montoInversion < 1000 Hacer
					Escribir "Monto inv�lido. Ingrese un monto mayor o igual a 1000 d�lares:";
					Leer montoInversion;
				FinMientras
			FinSi
			
			Escribir "Ingrese el tipo de periodicidad de pago (1-Mensual, 2-Trimestral, 3-Semestral, 4-Anual):";
			Leer periodicidadPago;
			// Validar periodicidad de pago
			Mientras periodicidadPago <= 0 o periodicidadPago >= 5 Hacer
				Escribir "Valor inv�lido. Ingrese una periodicidad v�lida (1-4):";
				Leer periodicidadPago;
			FinMientras
			
			Escribir "Ingrese el plazo en meses (mayor a 0):";
			Leer plazoMeses;
			// Validar plazo en meses seg�n la periodicidad y la moneda
			Si moneda = 1 Entonces
				Segun periodicidadPago Hacer
					1: multiple <- 1; //mensual
					2: multiple <- 3; //trimestral
					3: multiple <- 6; //semestral
					4: multiple <- 12; //anual
					De Otro Modo: Escribir "Periodicidad de pago no v�lida.";
				FinSegun
			Sino
				Segun periodicidadPago Hacer
					1: multiple <- 1;
					2: multiple <- 3;
					3: multiple <- 6;
					4: multiple <- 12;
					De Otro Modo: Escribir "Periodicidad de pago no v�lida.";
				FinSegun
			FinSi
			
			// Calcular cantidad de cupones
			cantidadCupones <- plazoMeses / multiple;
			
			// Calcular tasa de inter�s seg�n la moneda y periodicidad
			Si moneda = 1 Entonces
				Segun periodicidadPago Hacer
					1: tasaInteres <- 0.03;
					2: tasaInteres <- 0.04;
					3: tasaInteres <- 0.05;
					4: tasaInteres <- 0.06;
					De Otro Modo: Escribir "Periodicidad de pago no v�lida.";
				FinSegun
				tipoMoneda <- "Colones";
			Sino
				Segun periodicidadPago Hacer
					1: tasaInteres <- 0.005;
					2: tasaInteres <- 0.01;
					3: tasaInteres <- 0.02;
					4: tasaInteres <- 0.03;
					De Otro Modo: Escribir "Periodicidad de pago no v�lida.";
				FinSegun
				tipoMoneda <- "D�lares";
			FinSi
			
			// Calcular monto de intereses a pagar
			montoIntereses <- (montoInversion * tasaInteres / 12) * plazoMeses;
			
			// Calcular monto a pagar por cup�n
			montoPagarCupon <- montoIntereses / cantidadCupones;
			
			// Mostrar certificado de inversi�n
			Escribir "----------------------------------";
			Escribir "Certificado de inversi�n:";
			Escribir "Nombre del inversionista: " + nombreInversionista;
			Escribir "Fecha de emisi�n del certificado: " + fechaEmisionCertificado;
			Escribir "Tipo de moneda: " + tipoMoneda;
			// Traducir numero de periocidad elegido a texto
			Segun periodicidadPago Hacer
				1: periodoPago<-"Mensual";
				2: periodoPago<-"Trimestral";
				3: periodoPago<-"Semestral";
				4: periodoPago<-"Anual";
				De Otro Modo:
					periodoPago<-"Periodo no valido";
			FinSegun
			Escribir "Periodicidad de pago: " , periodoPago;
			Escribir "Porcentaje de inter�s: " , tasaInteres*100, "%";
			Escribir "Cantidad de cupones: " , cantidadCupones;
			Escribir "Monto a pagar por cup�n: " , montoPagarCupon;
			Escribir "Monto de intereses a pagar: " , montoIntereses;
			
			cantidadInversiones <- cantidadInversiones + 1;
			
			// Preguntar al usuario si desea registrar otro certificado
			Escribir "�Desea registrar otro certificado? (S/N):";
			Leer opcion;
			
		Hasta Que opcion = "N" o opcion = "n"
		
		Escribir "Proceso de registro de certificados finalizado.";
FinAlgoritmo
