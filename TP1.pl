% Exo 1
pere(jean, pierre).
pere(jean, jacques).
pere(pierre, paul).
pere(jacques, remi).
grandpere(X, Z) :- pere(X, Y), parent(Y, Z).
grandperepaternel(X, Z) :- pere(X, Y), pere(Y, Z).
parent(X, Y) :- pere(X, Y).
parent(X, Y) :- mere(X, Y).

% Exo 2
age(paul, 20).
age(pierre, 30).
age(julie, 15).
plus_vieux(X, Y) :- age(X, Z), age(Y, W), Z > W.

% Exo 3
fact(0, 1).
fact(N, R) :- 	N > 0,
				M is N - 1,
				fact(M, R2),
				R is R2 * N.
				
% Exo 4
non(P) :- P, !, fail.
non(_).
% A \== B. 
diff(A, B) :- non(A == B).

% Exo 5 : le cut arrête à la première occurence
appartient(E, [E|_]).
appartient(E, [_|Y]) :- appartient(E, Y), !.

% Exo 6
concat([], L, L).
concat([T|Q], L, [T|R]) :- concat(Q, L, R).