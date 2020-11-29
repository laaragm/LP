/** 4) Inserir um elemento no fim da lista.
Ex.: ?- inserirfim(4, [1, 2, 3], L). --- L = [1,2,3,4] . */

/** Sabendo que o primeiro parâmetro é o elemento a ser inserido e o segundo é
a lista, temos que se a lista for vazia basicamente só inserimos tal elemento nela.
Caso contrário, utilizamos da recursividade para, de fato, inserir o elemento. */

inserirfim(E,[],[E]).
inserirfim(E,[X|Z],[X|L]) :- inserirfim(E,Z,L). 