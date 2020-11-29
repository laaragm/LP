/** 3) Obter o valor médio de uma lista	de inteiros.
Ex.: ?- medio([4, 5, 2, 3, 1], M). --- M = 3.0 . */

/** A função nelementos, como já implementada anteriormente, é responsável por nos 
dizer a quantidade de elementos da lista. A função soma soma os elementos da
lista através de chamadas recursivas. Já a função médio utiliza as outras duas
funções para encontrar o número médio, dividindo a soma (de todos os elementos 
da lista) pela quantidade (número de elementos da lista). X é a lista, S é o
valor obtido da soma, Q é o valor obtido através do cálculo da quantidade de 
elementos na lista e M é o resultado, de fato o valor médio da lista. */

nelementos([],0).
nelementos([_|X],Q) :- nelementos(X,Z), Q is (Z+1).

soma([],0).
soma([Y|L],S) :- soma(L,A), S is (A+Y).

medio([],0).
medio(X,M) :- soma(X,S), nelementos(X,Q), M is S/Q.