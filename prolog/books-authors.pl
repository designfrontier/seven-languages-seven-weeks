%% Facts
likes(alice,bob).
likes(bob,carol).
likes(james,mary).
likes(mary,james).

mother(alice,lea).
mother(john,julia).
mother(lea,alberta).
father(james,alfred).
father(lea,john).

%% Rules
parent(X, Y) :- father(X, Y).
parent(X, Y) :- mother(X, Y).

grandparent(X, Y) :- parent(X, Z), parent(Z, Y).

love_compatible(X, Y) :- likes(X, Y), likes(Y, X).
