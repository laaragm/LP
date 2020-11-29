/** 13) Rotacionar uma lista uma posição.
Ex.: ?- rotacionar([1, 2, 3, 4, 5], L). --- L = [2, 3, 4, 5, 1] . */

/** Basicamente vamos movendo head para tail,ou seja, o número que representa o
primeiro elemento da lista em determinado momento é movido para a última posição,
e assim por diante. Utilizamos a função adicionar para facilitar o processo de
colocar os elementos na lista e, além disso, também temos o caso em que se a lista
vazia não tem nada a ser rotacionado, logo o retorno também será uma lista vazia */

adicionar([],L,L).
adicionar(0,[],[_]).
adicionar([A|P],Q,[A|R]) :- adicionar(P,Q,R).

rotacionar([],[]).
rotacionar([X|Y],L) :- adicionar(Y,[X],L).