
hello:
	@echo "Hello, World" 

echo-pwd:
	@echo $(PWD)
	@echo $(shell pwd)
	@echo $$(pwd)
	@echo xx$(pwd)

all: echo-pwd


define hidden
	@echo "This is a hidden target"
endef

mode=? 

demo:
ifeq ($(mode), hidden)
	@$(hidden)
else
	@echo "This is a public target"
endif


# ANSI color codes
# https://gist.github.com/fnky/458719343aabd01cfb17a3a4f7296797
GREEN = \033[32m
YELLOW = \033[33m
RED = \033[31m
BLUE = \033[34m
PURPLE = \033[35m
PINK = \033[38;5;201m
RESET = \033[0m


# see https://makefiletutorial.com/#command-echoingsilencing to understand the @ symbol
color:
	@echo "$(GREEN)Green$(RESET)"
	@echo "$(YELLOW)Yellow$(RESET)"
	@echo "$(RED)Red$(RESET)"
	@echo "$(BLUE)Blue$(RESET)"
	@echo "$(PURPLE)Purple$(RESET)"
	@echo "$(PINK)Pink$(RESET)"

