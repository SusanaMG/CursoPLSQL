-- Ciclos en PLSQL (bucles o repeticiones)
-- Ciclo FOR
set serveroutput on;

DECLARE

BEGIN
  <<ciclo_tabla_del_2>>
  FOR i IN 1..10 LOOP

    --dbms_output.put_line(i || '* 2 = ' || (i * 2) ); -- 1 * 2 = 2
    dbms_output.put(i);
    dbms_output.put(' * 2 = ');
    dbms_output.put_line(i * 2);

  END LOOP ciclo_tabla_del_2;

END;
/