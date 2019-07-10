-- Funciones creadas por Oracle
set serveroutput on;

DECLARE
  nombre nvarchar2(100) := ' Susana ';
  apellido nvarchar2(100) := 'Apellido';
  nombreCompleto nvarchar2(200);
  hoy date := sysdate;
  nombre2 nvarchar2(100);
  
BEGIN
  nombreCompleto := nombre || apellido;

  -- Funciones con textos o variables String
  dbms_output.put_line('Nombre: ' || nombre);
  dbms_output.put_line('Nombre completo: ' || nombreCompleto);
  dbms_output.put_line('Largo: ' || length(nombre));  --longitud
  dbms_output.put_line('Sin trim: ' || nombre || ';');
  dbms_output.put_line('Trim: ' || trim(nombre) || ';'); --elimina espacios
  dbms_output.put_line('Min�sculas: ' || lower(nombre)); --min�sculas
  dbms_output.put_line('May�sculas: ' || upper(nombre)); --may�sculas
  
  nombre := trim(nombre);
  nombreCompleto := nombre || ' ' || apellido;

  dbms_output.put_line('Nombre: ' || nombre);
  dbms_output.put_line('Nombre completo: ' || nombreCompleto);
  dbms_output.put_line('Cortar: ' || substr(nombre,1,3)); --cortar caracteres
  dbms_output.put_line('Reemplazo: ' || replace(nombre, 'S', 'Z')); --reemplazar
  dbms_output.put_line('Reemplazo: ' || replace(nombre, 'ana', 'i')); 
  dbms_output.put_line('Reemplazo: ' || replace(nombre, 'ana', '')); 

  -- Funciones con fecha
  dbms_output.put_line('Hoy: ' || hoy );
  dbms_output.put_line('Agregar mes: ' || add_months(hoy, 1)); --a�adir meses
  dbms_output.put_line('Agregar d�as: ' || (hoy + 1)); --a�adir d�as
  dbms_output.put_line('D�a: ' || to_char(hoy, 'dd')); 
  dbms_output.put_line('D�a Mes: ' || to_char(hoy, 'dd-MON')); 
  dbms_output.put_line('Anio: ' || to_char(hoy, 'YYYY')); 

  --Funciones para manejar valores nulos
  dbms_output.put_line('Nombre2: ' || nombre2); 
  dbms_output.put_line('NVL: ' || NVL(nombre2, 'Es nulo')); 
  dbms_output.put_line('NVL: ' || NVL(nombre, 'Es nulo')); 
  
END;
/