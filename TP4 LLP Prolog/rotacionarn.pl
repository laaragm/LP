/** 14) Rotacionar uma lista n posições.
Ex.: ?- rotacionarn(2, [1, 2, 3, 4, 5], L). --- L = [3, 4, 5, 1, 2] . */

/** Utilizamos duas funções previamente implementadas que são as funções adicionar
e rotacionar, para auxiliar no processo de rotacionamento da lista em N posições.
Além disso, é importante ressaltar que existe o caso onde a lista de entrada é vazia,
logo não tem o que rotacionar e, consequentemente, a saída é uma lista vazia também.
Nos casos onde a lista de entrada tem elementos, utilizamos da recursão do método
adicionar para ir trabalhando com a cauda da lista nas recursões, além da
realização das operações necessárias sobre o primeiro elemento */

adicionar(0,[],[_]).
adicionar(A,[E|X],[E|L]):- adicionar(A,X,L).
adicionar(A,[],[A|L]):- adicionar(0,[],[A|L]).

rotacionar([],[]). 
rotacionar([W|L],A) :- E is W, adicionar(E,L,A).

rotacionarn(0,E,E).
rotacionarn(A,W,L):- B is (A-1), rotacionar(W,Z), rotacionarn(B,Z,L).
