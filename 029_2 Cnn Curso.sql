-- Procedimientos y Funciones
-- Funci�n C�lculo de edad actual

SELECT fechanaci, edad_actual(fechanaci), sysdate FROM empleados
WHERE edad_actual (fechanaci) >= 35;

