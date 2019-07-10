-- Condiciones y Operadores
-- Condicion IF-THEN-ELSIF
set serveroutput on;

DECLARE
  nota number := 85;

BEGIN
  IF (nota >= 90) THEN
      dbms_output.put_line('Excelente');
  ELSIF (nota >= 80) THEN
      dbms_output.put_line('Muy bien');
  ELSIF (nota >= 70) THEN
      dbms_output.put_line('Bien');
  ELSE
      dbms_output.put_line('Necesita mejorar');
  END IF;

END;
/