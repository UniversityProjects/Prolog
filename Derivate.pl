% D(x) = 1
derivate(X, X, 1).

% D(x) = 1
derivate(a, X, 0) :- atomic(a).


% D(m*x) = m*D(x)
derivate(m*F, X, D) :-
	atomic(m),
	derivate(F, X, Df),
	D is m*Df.

% D(F+G) = D(F) + D(G)
derivate(F+G, X, D) :-
	D is Df + Dg,
	derivate(F, X, Df),
	derivate(G, X, Dg).


% D(F-G) = D(F) - D(G)
derivate(F-G, X, D) :-
	D is Df - Dg,
	derivate(F, X, Df),
	derivate(G, X, Dg).


% D(F*G) = G*D(F) + F*D(G)
derivate(F*G, X, D) :-
	D is ((Df*G) + F*Dg),
	derivate(F, X, Df),
	derivate(G, X, Dg).


% D(FG) = ( G*D(F) - F*D(G) ) / (G*G)
derivate(F/G, X, D) :-
	D is ( ( (Df*G) - (F*Dg) ) / (G*G) ),
	derivate(F, X, Df),
	derivate(G, X, Dg).


% D(F*G) = m*D(x).
