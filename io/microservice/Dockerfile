FROM nacyot/io-io:latest
MAINTAINER Daniel Sellers <daniel@designfrontier.net>
LABEL version=0.1

# Set default WORKDIR
WORKDIR /source


# Start the server
RUN io /source/service.io

# expose the port for the server we started
EXPOSE 1337
