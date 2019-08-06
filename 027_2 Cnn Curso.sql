-- Procedimientos y Funciones
-- Funci�n B�sica

-- Para llamar a la funci�n total_empleados se puede usar este modo a trav�s de un PLSQL:
set serveroutput on;

DECLARE
  
  empleados number;
  
BEGIN

  empleados := total_empleados();

  dbms_output.put_line('Total empleados: ' || empleados);

END;
/

