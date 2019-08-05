-- Ciclos en PLSQL (bucles o repeticiones)
-- Tarea 1 de ciclos
set serveroutput on;

DECLARE

type notasArray is varray(4) of number;
notas notasArray := notasArray(95,60,75,85);
promedio number(6,2) := 0;
sumatorio number := 0;

BEGIN
  FOR i in 1..4 LOOP
    
    sumatorio := sumatorio + notas(i);
    dbms_output.put_line( sumatorio ); 
    promedio := (sumatorio)/i;
  END LOOP;

  dbms_output.put_line('Promedio: ' || promedio ); 
  
END;
/

/*
TAREA
Tarea #1 de Ciclos
Dado el siguiente PL, determine el promedio de las notas contenidas en el arreglo.
Puede utilizar cualquier ciclo visto en la sección.
— =============
— Codigo PL-SQL
— =============
set serveroutput on;
declare
type notasArray is varray(4) of number;
notas notasArray := notasArray(95,60,75,85);
promedio number(6,2) := 0;
begin
— dbms_output.put_line( promedio ); — Determine el promedio
end;
/

*/


