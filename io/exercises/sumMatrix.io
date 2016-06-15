twoD := list(
    list(1,2,3,4),
    list(5,6,7,8),
    list(9,10,11,12),
    list(13,14,15,16)
)

sum2d := method(curr,
    if (self type == "Number",
        self + curr reduce(+),
        self reduce(+) + curr reduce(+)
    )
)

twoD reduce(sum2d) println









list2D := List clone
list2D dim := method(x, y,
    self value := list clone

    for(xcount, 0, x - 1,
        self value append(List clone)

        y repeat(
            self value at(xcount) append(xcount)
        )
    )

    self
)


new2D := list2D dim(10,10)
