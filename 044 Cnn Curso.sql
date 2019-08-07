-- Excepciones
-- Manejo de excepciones
set serveroutput on;

DECLARE
  nombre NVARCHAR2(100);
  
BEGIN
  SELECT NOMBRE INTO nombre FROM EMPLEADOS WHERE id = 20;
  dbms_output.put_line(nombre);
  
EXCEPTION
  WHEN no_data_found THEN
    dbms_output.put_line('No encontró empleado con ese código');
  WHEN others THEN
    dbms_output.put_line('Algo raro pasó');

END;
/

