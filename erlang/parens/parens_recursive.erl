-module(parens_recursive).
-export([permute/1]).

permute(0) -> 0;
permute(1) -> 1;
permute(N) -> permute(N, 0).

permute(0, 0) -> 1;
permute(Open, Close) when Open < 0; Close < 0 -> 0;
permute(Open, Close) -> permute(Open - 1, Close + 1) + permute(Open, Close - 1).
