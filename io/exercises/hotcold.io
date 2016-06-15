rand := (Random value(99) + 1) floor
prevGuess := nil
stdIn := File standardInput

10 repeat(
    writeln("Pick a number between 1 and 100!")

    guess := stdIn readLine asNumber

    if (guess == rand,
        writeln("Holy cow you guessed it!")
        break,
        writeln("Nope... not it")
    )

    if(prevGuess,
        if(((guess - rand) abs <= (prevGuess - rand) abs),
            (
                writeln("hotter!")
            ),
            (
                writeln("colder...")
            )
        )
    )

    prevGuess = guess
)

writeln("The number was " .. rand)

if (guess == rand, writeln("Amazing work :-)"), writeln("Sorry. Try again? :-("))
