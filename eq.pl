eq([_]).
eq([]).
eq(L):- listaOcorrencias(L,X), linearizar(X,O), retiraSimNao(O,Z), igual(Z).

contagem(X,[],0).
contagem(X,[X|B],L) :- !, contagem(X,B,N), L is N+1.
contagem(X,[H|B],L) :- contagem(X,B,L).

concatenar([],Y,Y).
concatenar([X|Z],L,[X|W]) :- concatenar(Z,L,W).

linearizar([],[]).
linearizar([E|[]],E).
linearizar([E|[X|Z]],L) :- concatenar(E,X,Y), linearizar([Y|Z],L).

remove(X,[],[]).
remove(X,[X|A],B) :- !, remove(X,A,B).
remove(X,[C|A],[C|B]) :- remove(X,A,B).

retiraSimNao([],[]).
retiraSimNao([E],[E]).
retiraSimNao([_,E|L],[E|A]) :- retiraSimNao(L,A).

igual([A,B]):- A==B, !.
igual([A,L|Z]):- A==L, igual([L|Z]).

listaOcorrencias([],[]).
listaOcorrencias([A|L],[[A,Z]|K]) :- contagem(A,[A|L],Z), remove(A,L,Y), listaOcorrencias(Y,K).