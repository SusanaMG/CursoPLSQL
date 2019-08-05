-- Ciclos en PLSQL (bucles o repeticiones)
-- Salir o Continuar en el ciclo (EXIT y CONTINUE)
set serveroutput on;

DECLARE

BEGIN
  <<ciclo_tabla_del_2>>
  FOR i IN 1..10 LOOP
 /* 
    IF(i = 5) then
      EXIT; --sale del ciclo sin importar lo que venga después
    END IF;

    IF(i = 5) then
      CONTINUE; --ignora lo que sigue para el 5 pero regresa al loop
    END IF;
*/
    IF(MOD(i, 2) <> 0) then -- MOD es el resto de la división: <>0 para imprimir pares y =0 imprimir para impares
      CONTINUE;
    END IF;

    --dbms_output.put_line(i || '* 2 = ' || (i * 2) ); -- 1 * 2 = 2
    dbms_output.put(i);
    dbms_output.put(' * 2 = ');
    dbms_output.put_line(i * 2);

  END LOOP ciclo_tabla_del_2;

END;
/

/*
    IF(i = 5) then
      EXIT; --sale del ciclo sin importar lo que venga después
    END IF;

    IF(i = 5) then
      CONTINUE; --ignora lo que sigue para el 5 pero regresa al loop
    END IF;

    IF(MOD(i, 2) <> 0) then -- MOD es el resto de la división: <>0 para imprimir pares y =0 imprimir para impares
      CONTINUE;
    END IF;
*/
