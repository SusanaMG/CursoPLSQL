-- Ciclos en PLSQL (bucles o repeticiones)
-- Ciclo Basico - Loop
set serveroutput on;

DECLARE
  x number := 10; 
  
BEGIN

  LOOP
    dbms_output.put_line(x);
    x := x + 10;
    
    --ejemplo, la condición de salida del loop se hace con el condicional
    IF (x > 120) THEN 
      EXIT;      
    END IF;
  
  END LOOP;

END;
/