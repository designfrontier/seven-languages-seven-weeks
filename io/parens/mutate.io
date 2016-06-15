permutation := clone Object

permutation mutate := method(open, close, str,
    if(open == 0 and close == 0,
        self strings append(str)
    )

    if(open > 0,
        self @@mutate(open - 1, close + 1, str .."(")
    )

    if(close > 0,
        self @@mutate(open, close - 1, str ..")")
    )
)

permutation strings := list clone

permute := method(
    count,

    mutant := permutation clone

    mutant mutate(count, 0, "")

    while(Scheduler waitForCorosToComplete, yield)

    return mutant strings size
);

permute(10) println
