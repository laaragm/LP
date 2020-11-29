/** 2) Obter	o	maior	valor	de	uma	lista	de	inteiros.
Ex.: ?- maior([4, 5, 2, 3, 1], M). --- M = 5 . */

/** Se a lista só possui um elemento, logo ele será o maior, isso é um fato.
Caso contrário, fazemos a verificação recursiva. B é o primeiro elemento
da lista e Z o segundo. Verificamos se T é maior que B e o maior é atribuído
ao máximo. Esse processo é realizado recursivamente até percorrermos toda a lista
e encontrarmos o máximo */

maior([B],B).
maior([B|Z],M) :- maior(Z,T), (T > B -> M=T;M=B).