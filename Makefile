lib = libfoo.a
obj = main001.o 
bin = main

CC = gcc
CPP_FLAGS =
C_FLAGS = -m32 -fno-pic -fno-pie
LD_FLAGS = -L. -m32
# Recipe

all: $(bin)

$(bin): $(obj) $(lib)
	$(CC) $(LD_FLAGS) $(obj) -l$(lib:lib%.a=%) -o $(bin) 

%.o: %.c
	$(CC) $(CPP_FLAGS) $(C_FLAGS) -c $<

clean:
	rm -f main001.o
