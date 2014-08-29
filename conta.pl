% This buffer is for notes you don't want to save.
% If you want to create a file, visit that file with C-x C-f,
% then enter the text in that file's own buffer.

vocale(a).
vocale(e).
vocale(i).
vocale(o).
vocale(u).



% Conta consonanti

conta_consonanti([],0).

conta_consonanti([X | Xs], N):- \+ vocal(X), conta_consonanti([_ | Xs], N).

conta_consonanti([_ | Xs], N):- conta_consonanti(Xs,M), N is M+1.



%  Elimina Vocali
elimina_vocali([],[]).

elimina_vocali([X | Xs], [X |Ys]) :-
	atomic(X),
	\+ vocale(X),
	elimina_vocali(Xs, Ys).


elimina_vocali([X | Xs], Ys) :-
	atomic(X),
	vocale(X),
	elimina_vocali(Xs, Ys).


elimina_vocali([X | Xs], Ys) :-
	\+ atomic(X),
	elimina_vocali(X, Zs),
	elimina_vocali(Xs, Ws),
	Ys = [Zs | Ws].

