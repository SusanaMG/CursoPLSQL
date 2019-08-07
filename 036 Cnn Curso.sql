-- Cursores y Tipo de dato RECORD
-- Cursores Impl�citos 
set serveroutput on;

DECLARE
  
BEGIN
/*
  -- Para consultar n�mero de registro afectados: sql%rowcount
  
  UPDATE empleados SET actualizado = sysdate;
  dbms_output.put_line('Afectados: ' || sql%rowcount); -- Para consultar n�mero de registro afectados
  COMMIT;
 
  UPDATE empleados SET actualizado = sysdate WHERE id > 500;
  dbms_output.put_line('Afectados (id > 500): ' || sql%rowcount); -- Para consultar n�mero de registro afectados
  COMMIT;
*/
/*
  -- Para consultar si encontr� registros afectados: sql%found (booleano: usamos el condicional IF)
  
  UPDATE empleados SET actualizado = sysdate; --Ejecutamos una consulta
  
  IF (sql%found) THEN
    dbms_output.put_line('Encontr� registros');
  ELSE
    dbms_output.put_line('No encontr� registros');
  END IF; 
  
  COMMIT; --PARA EL UPDATE
*/

  -- Para consultar si NO encontr� registros afectados: sql%found (booleano: usamos el condicional IF)
  
  UPDATE empleados SET actualizado = sysdate WHERE id > 500; --Ejecutamos una consulta
  
  IF (sql%notfound) THEN
    dbms_output.put_line('No encontr� registros');
  ELSE
    dbms_output.put_line('S� encontr� registros');
  END IF; 
  
  COMMIT; --PARA EL UPDATE
    
END;
/
