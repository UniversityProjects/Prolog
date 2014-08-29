%factorial
fact(0, 1).
fact(1, 1).
fact(X, F) :-
	X > 1,
	Z is (X-1),
	fact(Z, Y),
	F is X*Y.
