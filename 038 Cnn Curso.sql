-- Cursores y Tipo de dato RECORD
-- Tipo de dato registro - Table base Record
set serveroutput on;

DECLARE
  
  reg_empleado empleados%rowtype;
  
BEGIN

  SELECT * INTO reg_empleado FROM empleados WHERE id = 5; --solo va a devolver un registro
  
  dbms_output.put_line(reg_empleado.nombre);
  dbms_output.put_line(reg_empleado.id);
  dbms_output.put_line(reg_empleado.salario);
  dbms_output.put_line(reg_empleado.actualizado);

END;
/
