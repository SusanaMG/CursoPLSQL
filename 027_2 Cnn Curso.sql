-- Procedimientos y Funciones
-- Función Básica

-- Para llamar a la función total_empleados se puede usar este modo a través de un PLSQL:
set serveroutput on;

DECLARE
  
  empleados number;
  
BEGIN

  empleados := total_empleados();

  dbms_output.put_line('Total empleados: ' || empleados);

END;
/

