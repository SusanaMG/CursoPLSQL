-- Ciclos en PLSQL (bucles o repeticiones)
-- Tarea 2 de ciclos
set serveroutput on;

DECLARE
  numero number := 4; -- 4x3x2x1
  factorial number := 1;
  
BEGIN
    dbms_output.put_line('Numero inicial: ' || numero);

  <<while_factorial>>
  WHILE numero > 1 LOOP
  
    factorial := factorial * numero;
    numero := numero - 1;
  
  END LOOP while_factorial;

  dbms_output.put_line('Factorial: ' || factorial);

END;
/

/*
TAREA
Tarea #2 de Ciclos
Dado el siguiente PL, determine el factorial de un numero utilizando un ciclo WHILE.
Nota:
El factorial de un numero es igual a la multiplicación de cada uno de las unidades que lo
conforman, es decir:
• factorial de 2 = 2x1, igual a 2
• factorial de 3 = 3x2x1, igual a 6
• factorial de 4 = 4x3x2x1, igual a 24
• factorial de 5 = 5x4x3x2x1, igual a 120
— =============
— Codigo PL-SQL
— =============
set serveroutput on;
declare
numero number := 4; -- 4x3x2x1
factorial number;
begin
— dbms_output.put_line( factorial ); — Imprimir el resultado del factorial
end;
/
*/

/*
SOLUCIÓN DEL PROFESOR:

set serveroutput on;

DECLARE
  numero number := 4; -- 4x3x2x1
  factorial number;
  
BEGIN
  factorial := numero;

  <<while_factorial>>
  WHILE numero > 1 LOOP
  
    numero := numero - 1;
    factorial := factorial * numero;  
    
  END LOOP while_factorial;

  dbms_output.put_line('Factorial: ' || factorial);

END;
/

*/
