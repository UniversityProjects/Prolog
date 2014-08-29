% Natural Numbers

% X is a natural number
natural_number(0).
natural_number(s(X)) :- natural_number(X).


% X is less or equal than Y
leq(0, X) :- natural_number(X).
leq(s(X), s(Y)) :- leq(X, Y).


% X plus Y
pplus(0, X, X) :- natural_number(X).
pplus(X, 0, X) :- natural_number(X).
pplus(s(X), Y, s(Z)) :- pplus(X, Y, Z).


% X times Y
ttimes(0, X, 0) :- natural_number(X).
ttimes(X, 0, 0) :- natural_number(X).
ttimes(s(X), Y, Z) :- ttimes(X, Y, V), pplus(V, Y, Z).


% X pow Y
ppow(X, 0, s(0)) :- natural_number(X).
ppow(X, s(0), X) :- natural_number(X).
ppow(X, s(Y), Z) :-
	natural_number(X),
	natural_number(Y),
	ppow(X,Y,V),
	ttimes(X, V, Z).


% Factorial X
ffact(0, s(0)).
ffact(s(0), s(0)).
ffact(s(X), Z) :-
	natural_number(X),
	ffact(X, Y),
	ttimes(s(X), Y, Z).


% Minumin Between X And Y
mmin(0, X, 0) :- natural_number(X).
mmin(X, 0, 0) :- natural_number(X).
mmin(s(x), Y, s(Z)) :- mmin(X, Y, Z).




