-- Procedimientos y Funciones
-- Tarea de procedimientos y funciones
CREATE OR REPLACE FUNCTION promedio_notas(nota1 in number, nota2 in number, nota3 in number, nota4 in number)
return number
IS
  promedio number := 0;
  
BEGIN
  promedio := (nota1 + nota2 + nota3 + nota4)/4;
  RETURN promedio;

END;
/





/*
TAREA
Tarea de Procedimientos y funciones
Crear una función que permita calcular el promedio de 4 notas. El resultado final, deberá de
verse así:
Y ser llamado de la siguiente manera:
select a.*, promedio_notas( nota1,nota2,nota3,nota4) as promedio from notas a
NOTAS:
En el material adjunto tienen el Script de creación de la tabla. En caso de que no lo puedan
abrir por alguna razón, lo dejare aquí:
— SCRIPT DE CREACION
CREATE TABLE NOTAS ("NOMBRE" VARCHAR2(100), "NOTA1" NUMBER(3,0), "NOTA2"
NUMBER, "NOTA3" NUMBER, "NOTA4" NUMBER);
SET DEFINE OFF;
Insert into NOTAS (NOMBRE,NOTA1,NOTA2,NOTA3,NOTA4) values ('Tonya
Vazquez','100','80','99','77');
Insert into NOTAS (NOMBRE,NOTA1,NOTA2,NOTA3,NOTA4) values ('Mathews
Robbins','88','56','100','89');
Insert into NOTAS (NOMBRE,NOTA1,NOTA2,NOTA3,NOTA4) values ('Walton
Vincent','77','38','50','100');
Insert into NOTAS (NOMBRE,NOTA1,NOTA2,NOTA3,NOTA4) values ('Audra
Wade','92','93','93','80');
Insert into NOTAS (NOMBRE,NOTA1,NOTA2,NOTA3,NOTA4) values ('Susanne
Moody','70','67','78','83');
Insert into NOTAS (NOMBRE,NOTA1,NOTA2,NOTA3,NOTA4) values ('Stevenson
Dickson','45','90','70','89');
Insert into NOTAS (NOMBRE,NOTA1,NOTA2,NOTA3,NOTA4) values ('Hinton
Cooper','76','80','60','78');
Insert into NOTAS (NOMBRE,NOTA1,NOTA2,NOTA3,NOTA4) values ('Hahn
Brown','70','88','73','93');
Insert into NOTAS (NOMBRE,NOTA1,NOTA2,NOTA3,NOTA4) values ('Bennett
Brady','90','95','100','99');
Insert into NOTAS (NOMBRE,NOTA1,NOTA2,NOTA3,NOTA4) values ('Mueller
Jimenez','65','70','85','96');
— Fin del script de creación de tabla y dat
*/