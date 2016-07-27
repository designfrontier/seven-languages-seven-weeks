-modele(recurse).
-export([fib/1]).
-export([factorial/1]).
-export([count/0]).
-export([word_count/1]).

% Factorial
factorial(0) -> 1;
factorial(N) -> N * factorial(N-1).

% Fibanocci Generator
fib(0) -> 1;
fib(1) -> 1;
fib(N) -> fib(N-1) + fib(N-2).


% Count To Ten
count_to_ten() -> do_count(0).

do_count(10) -> 10.
do_count(N) -> do_count(N + 1).

% Count words in a string
