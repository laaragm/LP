/** 10) Linearizar uma lista de	inteiros. Dica: use	o predicado	concatenar.
Ex.: ?- linearizar([[1,2,3], [4,5], [6], [7,8]], L). --- L = [1, 2, 3, 4, 5, 6, 7, 8] . */

/** Utilizamos a função concatenar para auxiliar no processo de linearização da lista. 
Basicamente concatenamos todos os elementos e chamamos recursivamente linearizar para 
que cada lugar que tenha uma lista basicamente consigamos substituir com seus 
respectivos elementos */ 

concatenar([],Y,Y).
concatenar([X|Z],L,[X|W]) :- concatenar(Z,L,W).

linearizar([],[]).
linearizar([E|[]],E).
linearizar([E|[X|Z]],L) :- concatenar(E,X,Y), linearizar([Y|Z],L).