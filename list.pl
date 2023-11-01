member(X,[X|Tail]).
member(X,[Head|Tail]):-member(X,Tail).

conc([],L,L).
conc([X|L1],L2,[X|L3]):-conc(L1,L2,L3).

del(X,[X|Tail],Tail).
del(X,[Y|Tail],[Y|Tail1]):-del(X,Tail,Tail1).

sublist(S,L):-conc(L1,L2,L),conc(S,L3,L2).


run
member(3, [1, 2, 3, 4, 5]).