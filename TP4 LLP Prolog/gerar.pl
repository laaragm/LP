/** 7) Gerar uma lista com os elementos	de uma faixa (inclusive).
Ex.: ?- gerar(5, 10, L). --- L = [5, 6, 7, 8, 9, 10] . */

/** Se o range for 0, geramos uma lista com um só elemento que seria o próprio
número passado tanto no mínimo quanto no máximo. Caso contrário, utilizamos da
recursão para realizar tal tarefa. Desse modo, L é a lista contendo todos os elementos
consecutivos de B até A. Logo, para fazer isso basicamente verificamos se o limite
inferior (B) é menor que o limite superior (A), acrescentamos mais uma unidade
em B para gerar um novo elemento para a lista e fazemos esse processo até chegar
na condição em que B não é menor que A (nesse caso serão iguais e todos os elementos
já terão sido inseridos) */

gerar(X,X,[X]).
gerar(B,A,[B|L]) :- B<A, N is B+1, gerar(N,A,L).