
hello:
	@echo "Hello, World" 

echo-pwd:
	@echo $(PWD)
	@echo $(shell pwd)
	@echo $$(pwd)
	@echo xx$(pwd)

all: echo-pwd
