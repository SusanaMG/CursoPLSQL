-- Procedimientos y Funciones
-- Funciones con parámetros de entrada
set serveroutput on;

DECLARE
  a number := 10;
  b number := 25;  
  z number;
  
BEGIN

  z := mayor_entre(a,b);

  dbms_output.put_line('El mayor es: ' || z);

END;
/
