PREFIX=$(shell pwd)
INCLUDE_BAMTOOLS=/usr/local/include/bamtools/
INCLUDE_BAM_H=$(PREFIX)/lib/samtools/
LIB_BAMTOOLS=$(PREFIX)/lib/bamtools/lib
INCLUDE_HTS=/usr/local/include/htlsib/
all:
	g++ test.cc -L$(LIB_BAMTOOLS) -lbamtools -lhts -lz -I$(INCLUDE_BAMTOOLS)/api -I$(INCLUDE_BAMTOOLS) -o test_cc
	gcc -I$(INCLUDE_BAM_H) -I$(INCLUDE_HTS) ./lib/htslib/libhts.a ./lib/samtools/libbam.a  test.c -lz -lpthread -lhts -o test_c.o
