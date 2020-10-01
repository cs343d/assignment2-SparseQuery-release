CXX ?= /Users/dillon/Downloads/clang+llvm-6.0.0-x86_64-darwin-apple/bin/clang++

CXXFLAGS := -std=c++11

all: fakedb
	./bin/fakedb ./tables/one_stock_one_bond.csv

%.csv: fakedb
	./bin/fakedb $@

fakedb:
	@mkdir -p bin
	$(CXX) $(CXXFLAGS) main.cpp -o bin/fakedb

clean:
	rm -rf bin
