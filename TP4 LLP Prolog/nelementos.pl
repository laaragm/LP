/** 1) Obter o número de elementos de uma lista.
Ex.: ?- nelementos([1, 2, 3], S). --- S = 3 */ 

/** Fato: Número de elementos em uma lista vazia é 0. Para os demais elementos, 
utilizamos uma variável anônima, e o primeiro elemento da lista será igual a
essa variável anônima definida. Utilizamos da recursão para realizar tal cálculo,
incrementando a variável Z que representa os demais elementos da lista */

nelementos([],0).
nelementos([_|X],S) :- nelementos(X,Z), S is (Z+1).