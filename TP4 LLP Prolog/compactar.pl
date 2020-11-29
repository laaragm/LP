/** 11) Compactar uma lista	de elementos consecutivos.
Ex.: ?- compactar([a,a,a,a,b,c,c,a,a,d,e,e,e,e], L). 
--- L = [[4,a], [1,b], [2,c], [2,a], [1,d], [4,e]] . */

/** Basicamente utilizamos da recursividade da função compactar. É importante ressaltar
que temos a condição em que se a lista é vazia, não tem o que compactar e retornamos
uma lista vazia. Se a lista tem uma elemento, a lista compactada será o número 1 e
o respectivo elemento. Se a lista tiver dois elementos iguais, a compactada será 
o número 2 e o respectivo elemento. Nos casos mais gerais, onde existem diversos 
elementos, utilizamos dos artifícios de comparação e contagem de elementos, para ir 
verificando quais são os números iguais e fazendo a contagem destes, utilizando da
recursividade principalmente para ao final obtermos a lista compactada dos elementos */

compactar([L],[[1,L]]).
compactar([L,L],[[2,L]]).
compactar([],[]).
compactar([L,Z|E],[[1,L]|F]):- L\==Z -> compactar([Z|E],F).
compactar([L,L|E],[[K,L]|F]):- compactar([L|E], [[N,L]|F]), K is (N+1).