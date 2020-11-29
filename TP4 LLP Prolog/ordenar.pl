/** 15) Ordenar	uma	lista de inteiros.
Ex.: ?- ordenar([3, 1, 2], L). --- L = [1, 2, 3] . */

/** Utilizamos três funções auxiliares, que foram previamente implementadas para
ordenar a lista de inteiros: maior, remover e adicionar. Além disso, utilizamos
basicamente de conceitos aplicados anteriormente e recursividade para que 
as adições, remoções e outras operações sejam realizadas corretamente sobre o
conjunto de elementos de modo a ordernar a lista ao final. É importante ressaltar
que também temos o caso onde a lista de entrada é vazia, logo não há o que ordenar
e a lista de saída também será vazia */

adicionar([], L, L).
adicionar([E|Z], W, [E|V]) :- adicionar(Z, W, V).

remover(_,[],[]).
remover(E,[X|T],L) :- E==X, remover(E,T,L).
remover(E,[X|T],[X|L]) :- E\==X, remover(E,T,L).

maior([E],E).
maior([A|L],Y) :- maior(L,N),(N>A -> Y=N;Y=A).

ordenar([],[]).
ordenar([E],[E]).
ordenar(A,L) :- maior(A,Y), remover(Y,A,N), ordenar(N,O), adicionar(O,[Y],L).