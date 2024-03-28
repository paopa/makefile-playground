
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

