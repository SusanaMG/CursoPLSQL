-- Condiciones y Operadores
-- Condicion IF - THEN y IF THEN ELSE
set serveroutput on;

DECLARE
  nota number := 67;
  
BEGIN
  IF(nota between 67 and 69) THEN
    nota := 70;
  END IF;

  dbms_output.put_line('Nota: ' || nota);  
  
  IF(nota >= 70) THEN
    dbms_output.put_line('Aprobó el examen');
  ELSE
    dbms_output.put_line('Lo siento, suspendió el examen');
  END IF;

END;
/

/*
  IF(nota = 69 or nota = 68) THEN
    nota := 70;
  END IF;
  
  IF(nota between 67 and 69) THEN
    nota := 70;
  END IF;

*/

