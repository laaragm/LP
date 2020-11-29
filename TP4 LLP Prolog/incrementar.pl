/** 9) Incrementar em uma unidade cada elemento	de uma lista de inteiros.
Ex.: ?- incrementar([5, 6, 7, 8], L). --- L = [6, 7, 8, 9] . */

/** Se a lista for vazia, não tem o que incrementar e retornamos uma lista vazia
também. Caso contrário, Y recebe o incremento e, assim, todos os elementos vão
sendo incrementados até que esse processo aconteça com todos da lista */

incrementar([],[]).
incrementar([X|A],[Y|L]) :- incrementar(A,L), Y is X+1.