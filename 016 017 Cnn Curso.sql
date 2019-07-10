-- Condiciones y Operadores
-- Tarea 2
set serveroutput on;

DECLARE
  salarioBase number := 600;
  aumento number;
  salarioNuevo number;
  
BEGIN

  IF (salarioBase BETWEEN 0 AND 600) THEN
    aumento := salarioBase * 0.15;
  ELSIF (salarioBase <= 950) THEN
    aumento := salarioBase * 0.135;
  ELSIF (salarioBase <= 1400) THEN
    aumento := salarioBase * 0.10;
  ELSE
    aumento := salarioBase * 0.05;
  END IF;

  salarioNuevo := salarioBase + aumento;

  dbms_output.put_line('Salario base: ' || salarioBase);
  dbms_output.put_line('Aumento: ' || aumento);
  dbms_output.put_line('Salario nuevo: ' || salarioNuevo);

END;
/
/*
Realizar un PL/SQL para determinar el aumento de salario y el nuevo salario
neto de un empleado de la siguiente manera:
1- Se definirá el salario base en Dólares del empleado. Este dato lo 
ingresaremos en la declaración del PL. (Debe de ser entre un rango 
de 600 a 2000 USDs).
2- El cálculo del aumento será de la siguiente manera
* <= $600, le corresponde un 15% de aumento
* entre 601 y 950, aumento de 13.5%
* entre 951 y 1400, aumento de 10%
* >= 1401, aumento del 5%
3- Imprimir los resultados en consola.
*/
