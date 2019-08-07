-- Cursores y Tipo de dato RECORD
-- Cursor en tiempo de ejecuci�n
set serveroutput on;

DECLARE
  promedio number;
  
BEGIN
  FOR fila in (SELECT * FROM NOTAS ORDER BY NOMBRE ASC) LOOP
    promedio := (fila.nota1 + fila.nota2 + fila.nota3 + fila.nota4)/4;
    dbms_output.put_line('Nombre: ' || fila.nombre || ', promedio: ' || promedio);
  END LOOP;

END;
/
