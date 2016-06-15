magicSquare := list(
  list(2, 7, 6),
  list(9, 5, 1),
  list(4, 3, 8)
)

magicSquare sum := method(moves,
  moves reduce(sum, move
    self at(move x) at(move y) + sum
  , 0)
)
