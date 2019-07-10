-- Condiciones y Operadores
-- Condicional CASE
set serveroutput on;

DECLARE
  ran number := round(dbms_random.value(0,5));
  
BEGIN
  dbms_output.put_line(ran);

  CASE
    WHEN ran = 0 THEN
      dbms_output.put_line('Cero');
    WHEN ran = 1 THEN
      dbms_output.put_line('Uno');      
    WHEN ran = 2 THEN
      dbms_output.put_line('Dos');      
    WHEN ran = 3 THEN
      dbms_output.put_line('Tres');      
    WHEN ran = 4 THEN
      dbms_output.put_line('Cuatro');     
    ELSE
      dbms_output.put_line('Cinco');      
  END CASE;

END;
/