-- Cursores y Tipo de dato RECORD
-- Tarea de cursores
set serveroutput on;

DECLARE
  nombre NVARCHAR2(100);
  salario NUMBER;
  dias NUMBER;
  salarioPagar NUMBER;
  
  CURSOR c_empleadoSalario IS
    SELECT NOMBRE, SALARIO, DIASTRABAJADOS FROM EMPLEADOS ORDER BY NOMBRE ASC;
      
BEGIN
  dbms_output.put_line('========================');

  OPEN c_empleadoSalario;
  
  LOOP
    FETCH c_empleadoSalario INTO nombre, salario, dias;
    EXIT WHEN c_empleadoSalario%notfound;  
    salarioPagar := (salario/30) * dias;
    
    dbms_output.put_line('Empleado: ' || nombre);
   -- dbms_output.put_line('Salario diario: ' || round(salarioDiario, 2));
    dbms_output.put_line('Salario diario: ' || round((salario/30), 2));
    dbms_output.put_line('Dias trabajados: ' || dias);
    dbms_output.put_line('Salario a Pagar: ' || round(salarioPagar, 2));
    dbms_output.put_line('========================');

  END LOOP;
  
  CLOSE c_empleadoSalario;
  
END;
/

/*
TAREA
Tarea de cursores
Escribir un PL-SQL que realice la siguiente impresión en consola por EMPLEADO.
========================
Empleado: Nombre empleado
Salario diario: 999.99
DiasTrabajados: 99
Salario a Pagar: (Salario diario * dias trabajados)
========================
Debe de utilizar un cursor EXPLICITO, que llame a un procedimiento de impresión del registro.
NOTAS:
El salario diario = Salario / 30;
Es decir, el salario diario, es igual al salario que se encuentra en la tabla y lo dividiremos por
30.
salarioDiario = salario/30;
*/
