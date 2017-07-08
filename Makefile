PREFIX=$(shell pwd)
INCLUDE_BAMTOOLS=/usr/local/include/bamtools/
LIB_BAMTOOLS=$(PREFIX)/lib/bamtools/lib
all:
	g++ test.cc -L$(LIB_BAMTOOLS) -lbamtools -lhts -lz -I$(INCLUDE_BAMTOOLS)/api -I$(INCLUDE_BAMTOOLS) -o test_cc
