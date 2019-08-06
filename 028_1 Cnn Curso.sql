-- Procedimientos y Funciones
-- Funciones con parámetros de entrada

CREATE OR REPLACE FUNCTION mayor_entre (x in number, y in number)
return number
IS

BEGIN

  IF (x > y) THEN 
    return x;
  ELSE
    return y;
  END IF;

END;
/
