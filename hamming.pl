hamming(In1,In2,D) :- atom_chars(In1,T1), atom_chars(In2,T2), diffs(T1,T2,D).

diffs([],[],0).
diffs([A|X1],[B|X2],D) :- verifyChars(A,B,DA), diffs(X1,X2,DB), attDistance(D,DA,DB,D).

verifyChars(A,B,DA) :- (A\=B -> DA is 1;DA is 0).

attDistance(D, DA, DB, NewD) :- D is DA+DB.