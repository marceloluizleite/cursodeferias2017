/*

(+) na tabela opicional (left join) 

*/

SELECT JOG.NOME NOME,
       EQU.NOME AS NOME_EQUIPE
FROM JOGADOR JOG, EQUIPE EQU
WHERE JOG.ID_EQUIPE = EQU.ID_EQUIPE(+);


RIGHT JOIN

SELECT JOG.NOME NOME,
       EQU.NOME AS NOME_EQUIPE
FROM JOGADOR JOG, EQUIPE EQU
WHERE JOG.ID_EQUIPE(+) = EQU.ID_EQUIPE;

/*

O left join ou right join pode ser substituidos pelo (+) levando em conta o lado
que se deseja retorno.

*/

