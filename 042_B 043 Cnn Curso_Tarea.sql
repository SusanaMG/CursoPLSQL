-- Cursores y Tipo de dato RECORD
-- Tarea de cursores
set serveroutput on;

DECLARE
  empleado empleados%rowtype;

  CURSOR c_empleado IS
    SELECT * FROM EMPLEADOS;

  -- Procedimiento de impresión de empleado
  PROCEDURE imprimir_empleado(empleado empleados%rowtype) IS
    salarioDiario NUMBER;
    BEGIN
      salarioDiario := empleado.salario/30;
      dbms_output.put_line('Empleado: ' || empleado.nombre);
      dbms_output.put_line('Salario diario: ' || round(salarioDiario, 2));
      dbms_output.put_line('Dias trabajados: ' || empleado.diastrabajados);
      dbms_output.put_line('Salario a Pagar: ' || round((salarioDiario * empleado.diastrabajados), 2));
      dbms_output.put_line('========================');    
    END;
    -- Fin Procedimiento de impresión de empleado

BEGIN
  dbms_output.put_line('========================');

  OPEN c_empleado;
  
  LOOP
    FETCH c_empleado INTO empleado;
    EXIT WHEN c_empleado%notfound;  
    imprimir_empleado(empleado);
  END LOOP;
  
  CLOSE c_empleado;
  
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
