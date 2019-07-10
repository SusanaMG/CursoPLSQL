-- Variables: manejo de variables básicas
set serveroutput on;

DECLARE
--Definicion de funciones y variables
  salario NUMBER := 1500;
  nombreEmpleado NVARCHAR2(100);
  activo boolean;
  fecha date;

BEGIN
  nombreempleado :='Susana M';
  activo :=true;
  --fecha :=sysdate;
  fecha :='10-07-2019';
    
  DBMS_OUTPUT.PUT_LINE('Nombre: ' || nombreEmpleado);
  
  DBMS_OUTPUT.PUT_LINE('Salario: ' || salario);
 
  DBMS_OUTPUT.PUT_LINE('Fecha: ' || fecha);
  
  DBMS_OUTPUT.PUT_LINE('Activo: ' || case when activo then 'Si' else 'No' end);

END;
/