// The API!
//  /game/new -> POST returns a UUID for the game to be used in headers to track play takes { players: 1/2 }
//  /game/:uuid/move -> POST takes a move array [['x','','o'], ['x','','o'], ['x','','o']] returns either a win or the next move if 1 player
//  /game/:uuid/ -> GET returns the current game board as 2D array and the winner if a winner exists at this point. Also returns the number of players
//  /game/:uuid/quit -> POST requires valid auth token and ends the game returning the same thing as a GET to /game/:uuid
//  Use the magic square for determining win condition: http://mathworld.wolfram.com/MagicSquare.html

writeln("Here goes nothing")

ticTacToeService := HttpServer clone do(
    setPort(1337)

    renderResponse := method(request, response,
        list("path", "uri", "body") foreach(k,
            v := request perform(k)
            response body appendSeq(k .. ": "  .. v .. "<br>")
        )

        response body appendSeq("<hr>")

        request headers keys sort foreach(k,
            v := request headers at(k)
            response body appendSeq(k .. ": "  .. v .. "<br>")
        )
    )
)

writeln("starting server...")

ticTacToeService start
