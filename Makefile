.PHONY: help

help:
	@cat $(firstword $(MAKEFILE_LIST))

tcp-server:
	ruby tcp_server.rb

curl-tcp:
	echo "HELLO from client=A" | curl telnet://localhost:4242

