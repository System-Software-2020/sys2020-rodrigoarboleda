lib = libfoo.a
obj = main001.o 
bin = main

CC = gcc
CPP_FLAGS = -m32
C_FLAGS = -L.
LD_FLAGS =
# Recipe

all: $(bin)

$(bin): $(obj) $(lib)
	$(CC) $(CPP_FLAGS) $(LD_FLAGS) $(C_FLAGS) $(obj) -o $(bin) $(lib)

%.o: %.c
	$(CC) $(CPP_FLAGS) $(LD_FLAGS) -c $<

clean:
	rm -f main001.o
