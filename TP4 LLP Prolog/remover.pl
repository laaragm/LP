/** 12) Remover	de uma lista um	elemento (todas	as suas	ocorrências).
Ex.: ?- remover(3, [1,3,2,3,4], L). --- L = [1, 2, 4] . */

/** Se a entrada é uma lista vazia, independentemente do elemento a ser removido,
basicamente não temos o que remover. Caso contrário, utilizamos da recursividade
para conseguir remover todas as ocorrências de determinado elemento da lista.
Basicamente, se o elemento for o head da lista, não iremos copiá-lo para a lista 
resultando e continuamos a chamada recursiva com a cauda da lista. Ademais, copiamos
o elemento head para a lista e de resultados e continuamos as chamadas recursivas com
a cauda da lista */ 

remover(_,[],[]).
remover(E,[X|T],L) :- E==X -> remover(E,T,L).
remover(E,[X|T],[X|L]) :- E\==X -> remover(E,T,L).
