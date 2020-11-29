/** 6) Verificar se	um elemento	X é	adjacente a	um elemento Y.
Ex.: ?- adjacente(3, 4, [1, 2, 3, 4, 5, 6]). --- True. */

/** Sabemos que uma lista vazia não tem elementos adjacentes. Utilizamos
da recursividade para verificar se um elemento X é adjacente a um elemento Y.
Dessa forma, A representa o restante da lista, tirando o primeiro elemento que
é "ignorado" pois estamos utilizando uma variável anônima (ou dummy) e,
vamos fazendo chamadas recursivas pois se for adjacente na lista também serão em A */

adjacente(X,Y,[X,Y|_]).
adjacente(X,Y,[_|A]) :- adjacente(X,Y,A).