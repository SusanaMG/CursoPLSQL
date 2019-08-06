-- Procedimientos y Funciones
-- Función Cálculo de edad actual

SELECT fechanaci, edad_actual(fechanaci), sysdate FROM empleados
WHERE edad_actual (fechanaci) >= 35;

