-- Cursores y Tipo de dato RECORD
-- Registro definido por usuario - User defined record
set serveroutput on;

DECLARE
  
  TYPE coche IS RECORD(
    marca NVARCHAR2(100),
    modelo NVARCHAR2(100),
    puertas NUMBER  
  );
  
  mazda coche;
  toyota coche;
   
BEGIN
  
  mazda.marca := 'Mazda';
  mazda.modelo := 'Mazda 3';
  mazda.puertas := 4;
  
  toyota.marca := 'Toyota';
  toyota.modelo := 'Prado';
  toyota.puertas := 5;
  
  dbms_output.put_line(mazda.modelo);
  dbms_output.put_line(toyota.puertas);

END;
/
