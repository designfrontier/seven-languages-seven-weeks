ticTacToe := Object clone

ticTacToe check := method(gamelist,
  // gamelist is a list of coordinate hashes like this:
  //  list(move, move) <- see the move.io for the definition

  magicSquare sum(gamelist) println
)
