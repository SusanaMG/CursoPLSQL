-- Tarea 1
set serveroutput on;

DECLARE
  --Variables
  numero number := 5;
  precio number := 10;
  subCompra number;
  impuesto number;
  compraTotal number;
  
BEGIN
  --Calcular el subtotal
  subCompra := numero * precio;
  --Calcular el impuesto
  impuesto := subCompra * 0.15;
  --Calcular el total a pagar
  compraTotal := subcompra + impuesto;

  --Impresiones por consola
  dbms_output.put_line('** Venta de camisetas **');
  dbms_output.put_line('Unidades: ' || numero);
  dbms_output.put_line('Precio/unidad: ' || precio || '€');
  dbms_output.put_line('=========================');
  dbms_output.put_line('Compra sin impuestos: ' || subCompra || '€');
  dbms_output.put_line('Impuesto 15%: ' || impuesto || '€');
  dbms_output.put_line('Total: ' || compraTotal || '€');

END;
/

/*
TAREA
Capítulo 1: Empecemos a escribir PLs
CREAR UN PL/SQL
Declarar e inicializar las siguientes variables:
• Número de camisetas a vender
• Monto de camisetas
Calcular:
• Sub total a pagar = ( Numero de camisetas * Monto de camisetas )
• Calcular el 15% de impuesto sobre ventas
• Total a pagar = SubTotal + Impuesto Sobre ventas.

*/