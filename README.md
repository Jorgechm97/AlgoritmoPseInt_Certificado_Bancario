Instrucciones
Realice lo que se le solicita en el problema planteado, respete el orden y
escriba con claridad, cada parte resuelta en forma correcta será evaluada con
el puntaje correspondiente.
Elabore un Algoritmo PSEINT, que realice lo siguiente:
Enunciado:
La compañía Inversiones Totales S,A; quiere iniciar operaciones. Su giro de
negocio es recibir o captar fondos de los inversionistas a través de la emisión
de certificados de inversión.
El programa que se le ha solicitado debe registrar tantos certificados como el
usuario que utiliza el sistema lo estime conveniente.
Por cada certificado de inversión el sistema debe solicitar la siguiente
información:
1. Nombre de inversionista
2. Fecha de emisión del certificado
3. Moneda, los valores permitidos son 1 y 2, donde 1 corresponde a
moneda en colones y 2 corresponde a moneda dólares; debe de validar
este dato.
4. Monto de inversión, debe de asegurar que se digite un dato positivo
mayor o igual a 100,000 para inversiones en colones y mayor o igual a
1,000 para inversiones en dólares
5. Tipo de periodicidad de pago, valor mayor a cero y menor a 5 donde:
Un 1 significa periodicidad mensual, 2 significa periodicidad trimestral,
3 significa periodicidad semestral y 4 significa periodicidad anual.
6. Plazo en meses. Corresponde a un valor positivo mayor a cero y que
dependiendo de la periodicidad el mismo sea múltiplo del valor señalado
en las tablas siguientes
Moneda, Periodicidad, Tasa Anual, Múltiplo
Colones, 1, 3%, 1
Colones, 2, 4%, 3
Colones, 3, 5%, 6
Colones, 4, 6%, 12
Moneda, Periodicidad Tasa Anual Múltiplo
Dólares, 1, 0.5%, 1
Dólares, 2, 1%, 3
Dólares, 3, 2%, 6
Dólares, 4, 3%, 12
Luego el sistema deberá de presentar un certificado de inversión con los
datos anteriores más los siguientes datos:
- Los datos antes digitados, el tipo de moneda y la periodicidad
se debe indicar textualmente, ver pantallas de ejemplo.
- Porcentaje de interés que paga el certificado de inversión, es el
dato indicado en las tablas anteriores
- Cantidad de cupones, corresponde a un valor numérico entero
que corresponde al plazo en meses dividido entre el múltiplo
señalado en las tablas anteriores
- Monto a pagar por cupón que corresponde a un valor que se
obtiene de dividir el monto de interés a pagar entre la cantidad de
cupones
- Monto de intereses a pagar, es un cálculo que corresponde a:
Monto de interés=(Monto de inversión * tasa de interés) / 12 *
Plazo en meses
Luego el sistema deberá de presentar un certificado de inversión con los
datos anteriores más los siguientes datos:
- Los datos antes digitados, el tipo de moneda y la periodicidad
se debe indicar textualmente, ver pantallas de ejemplo.
- Porcentaje de interés que paga el certificado de inversión, es el
dato indicado en las tablas anteriores
- Cantidad de cupones, corresponde a un valor numérico entero
que corresponde al plazo en meses dividido entre el múltiplo
señalado en las tablas anteriores
- Monto a pagar por cupón que corresponde a un valor que se
obtiene de dividir el monto de interés a pagar entre la cantidad de
cupones
- Monto de intereses a pagar, es un cálculo que corresponde a:
Monto de interés=(Monto de inversión * tasa de interés) / 12 *
Plazo en meses

ejemplo al ejecutar
![image](https://github.com/Jorgechm97/AlgoritmoPseInt_Certificado_Bancario/assets/167147775/445f7c4f-4efe-42d8-89b6-57ec604a25e4)

