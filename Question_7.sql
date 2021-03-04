--Escreva uma consulta SQL que selecione o nome de todos os animais de estimação de maneira distinta.

SET SERVEROUTPUT ON
SET VERIFY OFF
SELECT tipo
      ,nome
  FROM (SELECT 'Cachorro' tipo
              ,d.name     nome
          FROM dogs d
            
         UNION ALL 

        SELECT 'Gato'     tipo
              ,c.name     nome
          FROM cats c)
  ORDER BY 2,1;
