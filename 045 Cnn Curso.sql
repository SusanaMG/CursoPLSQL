-- Excepciones
-- Excepciones personalizadas
set serveroutput on;

DECLARE
  ran NUMBER := round(dbms_random.value(1,3));
  --Declaración de las excepciones personalizadas
  error_1 EXCEPTION;
  error_2 EXCEPTION;  
  error_3 EXCEPTION;  
  
BEGIN
  --Llamada del error personalizado
  CASE
    WHEN ran = 1 THEN
      RAISE error_1;
    WHEN ran = 2 THEN  
      RAISE error_2;
    WHEN ran = 3 THEN
      RAISE error_3;
  END CASE;
  dbms_output.put_line('Esta línea nunca se ejecutará');
  
EXCEPTION
  --Definición del error personalizado
  WHEN error_1 THEN
      dbms_output.put_line('Manejamos el error 1');
  WHEN error_2 THEN
      dbms_output.put_line('Manejamos el error 2');
  WHEN error_3 THEN
      dbms_output.put_line('Manejamos el error 3');

END;
/
--dbms_output.put_line('');


























