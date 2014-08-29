% Member

member(X, [X | _]) :- !.

member(X, [_ | Y]) :-
	member(X,Y),
	!.

%Partition List
partition([],_,[],[]).

partition( [X | Xs], T, [X | L], G) :-
	T =< X,
	!,
	partition(Xs, T, L, G).

partition( [X | Xs], T, L, [X | G]) :-
	T >= X,
	!,
	partition(Xs, T, L, G).




%Delete Char From List
delete([X], X, []) :- !.

delete([X | Xs], X, Ys) :-
	delete(Xs,X,Ys).

delete([X | Xs], Z, [X | Ys]) :-
	delete(Xs, Z, Ys).


%4
%1
%16
%4
%1
%16
%4
%1

%rest(X, [_ | Ys], Zs)
%No

%fact(0, 1) :- !.
%M is N - 1, fact(M,Y), X is Y * N

%!
%member(X,Y)

%conta_consonanti([],0].
%vocale(X), !, conta_consonanti(Xs, N)

% delete([],_,[]).
% !, delete(Xs, X, Ys)
% delete(Xs, X, Ys)

% partition([],_,[],[]).
%T =< X, partition(Xs, T, L, G).
% partition(Xs, T, L, G).


%\+ vocale(X), elimina_vocali(Xs, Ys).
%elimina_vocali([X | Xs], Ys)
%elimina_vocali(Xs, Ys).
%elimina_vocali([X | Xs], [Y | Ys]
%elimina_vocali(X, Y), elimina_vocali(Xs, Ys).


