-- Cursores y Tipo de dato RECORD
-- Registros como parámetros  a funciones y procedimientos.
set serveroutput on;

DECLARE
  
  TYPE coche IS RECORD(
    marca NVARCHAR2(100),
    modelo NVARCHAR2(100),
    puertas NUMBER  
  );
  
  mazda coche;
  toyota coche;
  
  -- PROCEDIMIENTO DE IMPRESIÓN
  PROCEDURE imprimir_coche(carro coche) IS
  BEGIN
    dbms_output.put_line(carro.marca);
    dbms_output.put_line(carro.modelo);
    dbms_output.put_line(carro.puertas);
  END;
  --FIN PROCEDIMIENTO DE IMPRESIÓN

BEGIN
  
  mazda.marca := 'Mazda';
  mazda.modelo := 'Mazda 3';
  mazda.puertas := 4;
  
  toyota.marca := 'Toyota';
  toyota.modelo := 'Prado';
  toyota.puertas := 5;
  
  imprimir_coche(mazda);
  imprimir_coche(toyota);

END;
/