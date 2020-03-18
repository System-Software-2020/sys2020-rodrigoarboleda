lib = libfoo.a
obj = main001.o 
bin = main

CC = gcc
CPP_FLAGS =
C_FLAGS = -m32
LD_FLAGS = -L.
# Recipe

all: $(bin)

$(bin): $(obj) $(lib)
	$(CC) $(LD_FLAGS) $(obj) -o $(bin) -l$(lib:lib%.a=%)

%.o: %.c
	$(CC) $(CPP_FLAGS) $(C_FLAGS) -c $<

clean:
	rm -f main001.o
