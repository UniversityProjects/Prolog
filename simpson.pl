
father(abraham, homer).
father(homer, bart).
father(homer, lisa).
father(homer, maggie).

mother(marge, bart).
mother(marge, lisa).
mother(marge, maggie).

male(abraham).
male(homer).
male(bart).
female(marge).
female(lisa).
female(meggie).

parent(X, Y) :- father(X, Y).
parent(X, Y) :- mother(X, Y).

ancestor(X, Y) :- parent(X, Y).
ancestor(X, Y) :- parent(Z, Y), ancestor(X, Z).

descendant(X, Y) :- ancestor(Y, X).