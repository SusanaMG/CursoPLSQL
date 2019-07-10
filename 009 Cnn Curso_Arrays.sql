-- Arreglos/arrays
set serveroutput on;

DECLARE
  --Definimos los arrays
  type alumnosArray is varray(5) of nvarchar2(100);
  type notasArray is varray(5) of number;

  --Usamos los arrays
  alumnos alumnosArray;
  notas notasArray;
  
BEGIN

  alumnos := alumnosArray('Susana','Melissa','Andrea','Antonio','Clarisa');
  notas := notasArray(90, 100, 95, 89, 75);
  
  dbms_output.put_line(alumnos(1));
  --dbms_output.put_line(alumnos(2));
  --dbms_output.put_line(alumnos(3));

  dbms_output.put_line(notas(1));
  --dbms_output.put_line(notas(2));
  --dbms_output.put_line(notas(3));
  
  notas(1) := 95;
  dbms_output.put_line(notas(1));
  
END;
/