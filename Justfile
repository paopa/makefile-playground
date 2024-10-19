# The first line will be used as the default command, thus I think list all is a good default command.
default:
  @just --list


recipe-name:
  echo 'This is a recipe!'

# this is a comment
another-recipe:
  @echo 'This is another recipe.'


### Dependent Commands ###

first:
  @echo 'This is the first recipe.'
  @echo '='

second: first
  @echo 'This is the second recipe.'
  @echo '=='

second-dev: first
  @echo 'This is the second recipe for development.'
  @echo '=='

third:
  @just second
  @echo 'This is the third recipe.'
  @echo '==='

### Working Directory ###

dir:
  @echo 'This is the working directory.'
  @pwd

[no-cd]
dir-no-cd:
  @echo 'This is the working directory.'
  @pwd

### Aliases ###

alias f :=first

### Environment Variables ###

set dotenv-load

env:
  @echo 'This is the environment variable.'
  @echo $FOO

### Variables ###

fn a b:
  @echo {{a}} {{b}}

#### default variable

def-var a="hello world":
  @echo {{a}}


# ANSI color codes
# https://gist.github.com/fnky/458719343aabd01cfb17a3a4f7296797
GREEN := "\u{001b}[32m"
YELLOW := "\u{001b}[33m"
RED := "\u{001b}[31m"
BLUE := "\u{001b}[34m"
PURPLE := "\u{001b}[35m"
PINK := "\u{001b}[38;5;201m"
RESET := "\u{001b}[0m"


# see https://makefiletutorial.com/#command-echoingsilencing to understand the @ symbol
color:
  @echo "{{ GREEN }}Green{{ RESET }}"
  @echo "{{ YELLOW }}Yellow{{ RESET }}"
  @echo "{{ RED }}Red{{ RESET }}"
  @echo "{{ BLUE }}Blue{{ RESET }}"
  @echo "{{ PURPLE }}Purple{{ RESET }}"
  @echo "{{ PINK }}Pink{{ RESET }}"

