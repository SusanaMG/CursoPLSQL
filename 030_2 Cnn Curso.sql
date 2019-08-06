-- Procedimientos y Funciones
-- Definir funciones dentro de PLs
set serveroutput on;

DECLARE

  salarioPromedio number := 0;
  
  -- =======================
  -- Obtener promedio
  -- =======================
  FUNCTION obtener_promedio
  return number
  IS
    promedio number := 0;
  BEGIN 
    SELECT AVG(salario) into promedio FROM empleados;
    return promedio;
  END;    
  -- ======== Fin de la función obtener_promedio

BEGIN -- Función PL principal
  salarioPromedio := obtener_promedio();
  dbms_output.put_line('El salario es: ' || salarioPromedio);

END;
/

