-- Constantes: dato que no cambia (par�metros, variables globales, etc)
set serveroutput on;

DECLARE
  -- Constantes
  PI CONSTANT number := 3.141559;
  
  -- Variables
  area number;
  radio number;

BEGIN
  radio := 7;
  
  area := PI*(radio * radio);
  
  dbms_output.put_line('Area: ' || round(area, 2) || 'cm2');
  dbms_output.put_line('Area: ' || round(area) || 'cm2');
  dbms_output.put_line('Area: ' || round(area, 4) || 'cm2');


END;
/