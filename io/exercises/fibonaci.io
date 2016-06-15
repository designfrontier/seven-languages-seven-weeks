fib := method(iter,
    i := iter - 2
    fnumbers := list(1,1)

    while(i > 0, fnumbers append(fnumbers at(fnumbers size - 1) + fnumbers at(fnumbers size - 2)); i = i - 1)

    return(fnumbers at(fnumbers size - 1))
)

fib(1476) println;

fibr := method(iter,
    if (
        iter <= 2,
        return(1);
    );

    fibrec := method(fibiter, curr, prev,
        if(
            fibiter == 0,
            return(curr),
            fibrec(fibiter - 1, prev + curr, curr)
        );
    );

    //skipping to the third iteration because the first two are 1 and 1
    fibrec(iter - 2, 1, 1);
)

fibr(1000) println;

