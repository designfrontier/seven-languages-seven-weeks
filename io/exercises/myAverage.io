List myAverage := method(
    return self reduce (prev, curr,
        if ((curr type() != "Number" or prev type() != "Number"),
            Exception raise("NonNumericValue",
                ("a non-number value: [" .. curr .. "] found during a call to [" .. (call message()) .. "]")),
            prev + curr
        )
    ) / self size
)

myList := List clone

myList append(1,2,3,7,3,5)

myList myAverage println

myErrorList := List clone

myErrorList append(1,2,3,7,"3",5)

myErrorList myAverage println
