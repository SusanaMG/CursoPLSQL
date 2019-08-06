-- Procedimientos y Funciones
-- Función Cálculo de edad actual

CREATE OR REPLACE function edad_actual(fechanaci in date)
return number
IS
    edad number(3):=0;
    
BEGIN
        
    edad:= trunc((to_number(to_char(sysdate,'yyyymmdd')) -to_number(to_char( fechanaci,'yyyymmdd')))/10000) ;
    
    return edad;
    
    EXCEPTION   
    WHEN OTHERS then
        edad:=0;
          
    RETURN  edad;    
END;
/
