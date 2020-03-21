lib = libfoo.a
obj = main001.o
bin = main

CC = gcc
CPP_FLAGS =
C_FLAGS = -m32 -fno-pic -fno-pie -O0
LD_FLAGS = -L. -m32
AR = ar
A_FLAGS = crs

# Recipe

all: $(bin)

$(bin): $(obj) $(lib)
	$(CC) $(LD_FLAGS) $(obj) -l$(lib:lib%.a=%) -o $(bin) 

$(lib): $(lib:lib%.a=%.o)
	$(AR) $(A_FLAGS) $(lib) $<

$(lib:lib%.a=%.o): $(lib:lib%.a=%.c) $(lib:lib%.a=%.h)
	$(CC) $(CPP_FLAGS) $(C_FLAGS) -c $<

%.o: %.c
	$(CC) $(CPP_FLAGS) $(C_FLAGS) -c $<

clean:
	rm -f $(bin) $(obj) $(lib:lib%.a=%.o)
