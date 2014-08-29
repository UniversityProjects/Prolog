% Fathers
father(terach, abraham).
father(terach, nachor).
father(terach, haran).
father(abraham, isaac).
father(haran, lot).
father(haran, milcah).
father(haran, yiscah).

% Mothers
mother(sarah, isaac).

% Males
male(terach).
male(abraham).
male(nachor).
male(haran).
male(isaac).
male(lot).

% Females
female(sarah).
female(milcah).
female(yiscah).



% Parent
parent(X, Y) :- father(X, Y).
parent(X, Y) :- mother(X, Y).

% Ancestor
ancestor(X, Y) :- parent(X, Y).
ancestor(X, Y) :- parent(Z, Y), ancestor(X, Z).

% Descendant
descendent(X, Y) :-
	ancestor(Y, X).

% Uncle
uncle(X, Y) :-
	parent(Z, Y),
	brother(X, Z).

% Aunt
aunt(X, Y) :-
	parent(Z, Y),
	sister(X, Z).

% Brother
brother(X, Y) :-
	male(X),
	parent(Z, X),
        parent(Z, Y).

% Sister
sister(X, Y) :-
	female(X),
	parent(Z, X),
	parent(Z, Y).

% Married
married(X, Y) :-
	mother(X, Z), father(Y, Z);
	father(X, Z), mother(Y, Z).

% Cousin
cousin(X, Y) :-
	parent(Z, X), parent(W, Y), brother(W, Z);
	parent(Z, X), parent(W, Y), sister(W, Z).


% Brother In Law
brother_in_law(X, Y) :-
	male(X),
	brother(X, Z),
	married(Z, Y).


% Sister In Law
sister_in_law(X,Y) :-
	female(X),
	sister(X, Z),
	married(Z, Y).


% Mother In Law
mother_in_law(X,Y) :-
	female(X),
	mother(X, Z),
	married(Z, Y).


% Father In Law
father_in_law(X, Y) :-
	male(X),
	father(X, Z),
	married(Z, Y).
