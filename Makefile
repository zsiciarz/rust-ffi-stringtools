.PHONY: c c_sharp go haskell nim node python ruby clean

all: c c_sharp go haskell nim node python ruby

lib:
	cargo build

export LD_LIBRARY_PATH=../target/debug

c: lib
	cd c && gcc main.c -L ../target/debug -lstringtools -o main && ./main

c_sharp: lib
	cd c_sharp && mcs main.cs && mono main.exe

go: lib
	cd go && go run main.go

haskell: lib
	cd haskell && ghc --make main.hs -L../target/debug -lstringtools -o main && ./main

nim: lib
	cd nim && nim c -r --verbosity:0 main.nim

node: lib
	cd node && node main.js

python: lib
	cd python && python main.py

ruby: lib
	cd ruby && ruby main.rb

clean:
	cargo clean && rm c/main c_sharp/main.exe haskell/main
