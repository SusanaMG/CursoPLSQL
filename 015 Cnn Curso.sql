-- Condiciones y Operadores
-- Operadores-Logicos: > , >= , < , <= , = , <> , % , LIKE , BETWEEN , IN ,
-- IS NULL
set serveroutput on;

DECLARE
  
  A number := 5;
  B number := 10;
  nombre1 nvarchar2(100) := 'Susana';
  nombre2 nvarchar2(100);
  
BEGIN

  IF (A <> B) THEN
    dbms_output.put_line('A es diferente de B');
  END IF;
  
  IF (nombre1 LIKE '%usa%') THEN
    dbms_output.put_line('El nombre contiene usa');
  END IF;

  IF (A BETWEEN 5 and 10) THEN
    dbms_output.put_line('A está entre cero y diez');
  END IF;
  
  IF (B IN (5, 10, 15, 20)) THEN
    dbms_output.put_line('B está en el grupo de elementos');
  END IF;

  IF (nombre2 IS NULL) THEN
    dbms_output.put_line('El nombre2 es nulo');
  END IF;

END;
/

/*
  IF (A >= B) THEN
    dbms_output.put_line('A es mayor o igual que B');
  END IF;

  IF (nombre1 like 'Sus%') THEN
    dbms_output.put_line('El nombre contiene Sus');
  END IF;
  
  IF (nombre1 like '%na') THEN
    dbms_output.put_line('El nombre termina en na');
  END IF;
*/
