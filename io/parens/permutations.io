// This form is super slow... because it is literally a single
//  thread doing all the work.

permute := method(
    count,

    permutations := 0
    strings := list clone;

    mutate := method(open, close, str,
        if(open == 0 and close == 0,
            strings append(str)
            str println
        )

        if(open > 0,
            mutate(open - 1, close + 1, str .."(")
        )

        if(close > 0,
            mutate(open, close - 1, str ..")")
        )
    )

    mutate(count, 0, "")

    return strings size
);

permute(10) println
