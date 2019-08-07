-- Cursores y Tipo de dato RECORD
-- Cursores Implícitos 
set serveroutput on;

DECLARE
  
BEGIN
/*
  -- Para consultar número de registro afectados: sql%rowcount
  
  UPDATE empleados SET actualizado = sysdate;
  dbms_output.put_line('Afectados: ' || sql%rowcount); -- Para consultar número de registro afectados
  COMMIT;
 
  UPDATE empleados SET actualizado = sysdate WHERE id > 500;
  dbms_output.put_line('Afectados (id > 500): ' || sql%rowcount); -- Para consultar número de registro afectados
  COMMIT;
*/
/*
  -- Para consultar si encontró registros afectados: sql%found (booleano: usamos el condicional IF)
  
  UPDATE empleados SET actualizado = sysdate; --Ejecutamos una consulta
  
  IF (sql%found) THEN
    dbms_output.put_line('Encontró registros');
  ELSE
    dbms_output.put_line('No encontró registros');
  END IF; 
  
  COMMIT; --PARA EL UPDATE
*/

  -- Para consultar si NO encontró registros afectados: sql%found (booleano: usamos el condicional IF)
  
  UPDATE empleados SET actualizado = sysdate WHERE id > 500; --Ejecutamos una consulta
  
  IF (sql%notfound) THEN
    dbms_output.put_line('No encontró registros');
  ELSE
    dbms_output.put_line('Sí encontró registros');
  END IF; 
  
  COMMIT; --PARA EL UPDATE
    
END;
/
