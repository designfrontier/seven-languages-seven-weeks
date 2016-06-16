FROM nacyot/io-io:latest
MAINTAINER Daniel Sellers <daniel@designfrontier.net>
LABEL version=0.1

# Copy the files over
COPY  *.io /source/tictactoe/

# expose the port for the server we started
EXPOSE 1337

# Start the server
CMD io /source/tictactoe/service.io
