/** 8) Reverter	uma	lista. Dica: use o predicado concatenar.
Ex.: ?- reverter([1, 2, 3], L). --- L = [3, 2, 1] . */

/** Se a lista for vazia não tem o que reverter. Caso contrário utilizamos 
a função concatenar para concatenar os elementos de trás para frente, utilizando
da recursividade, para que a lista fique na ordem reversa */

concatenar([],Y,Y).
concatenar([X|Z],L,Y) :- concatenar(Z,L,[X|Y]).

reverter([],[]).
reverter(X,L) :- concatenar(X,L,[]).