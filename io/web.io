
writeln("setting up server...")
port := 8090

server := HttpServer clone do(
    setPort(port)
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

writeln("starting server on port: #{port}")

server start
