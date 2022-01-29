.PHONY: help
.PHONY: tcp-server curl-tcp
.PHONY: http-server curl-http

help:
	@cat $(firstword $(MAKEFILE_LIST))

tcp-server:
	ruby tcp_server.rb

curl-tcp:
	echo "HELLO from client=A" | curl telnet://localhost:4242

http-server:
	ruby http_server.rb

curl-http:
	curl localhost:80/customers/42
