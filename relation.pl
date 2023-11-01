parent(pam,bob).
parent(tom,bob).
parent(tom,liz).
parent(bob ann).
parent(bob,pat).
parent(pat,jim).
female(pam).
male(tom).
female(liz).
female(pat).
male(bob).
male(jim).
offspring(Y,X) :- parent(X,Y).
mother(X,Y):- parent(X,Y),female(X).
father(X,Y):- parent(X,Y),male(Y). 
predecessor(X,Z) :- parent(X,Z).
successor(X,Z) :- parent(X,Y),predecessor(Y,Z).
sister(X,Y) :- parent(Z,X),parent(Z,Y),female(X),X\==Y.
brother(X,Y) :- parent(Z,X),parent(Z,Y),male(Y),X\==Y.
grandmother(X,Z) :- mother(X,Y),parent(Y,Z).
grandfather(X,Z) :- father(X,Y),parent(Y,Z).



run
parent(X,jim).


mother(X,Y).

sister(X,Y).

