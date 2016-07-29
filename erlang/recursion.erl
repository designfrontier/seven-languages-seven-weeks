-module(recursion).
-export([fib/1, fib_tail/1, factorial/1, count_to_ten/0, word_count/1, word_count_native /1]).

% Factorial
factorial(0) -> 1;
factorial(N) -> N * factorial(N-1).

% Fibanocci Generator
fib(0) -> 1;
fib(1) -> 1;
fib(N) -> fib(N-1) + fib(N-2).

fib_tail(N) -> fib_tail(N,1,1).
fib_tail(0,F1,F2) -> F1;
fib_tail(N,F1,F2) -> fib_tail(N-1,F2,F1+F2).


% Count To Ten
count_to_ten() -> do_count(0).

do_count(10) -> 10;
do_count(N) -> do_count(N + 1).

% Count words in a string
word_count(Str) -> count_items(string:tokens(Str, " ")).
count_items([]) -> 0;
count_items([_ | Tail])  -> 1 + count_items(Tail).

word_count_native(Str) -> string:words(Str).
