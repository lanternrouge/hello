# Makefile

TARGET=hello
LIBS=
INCLUDE=

CC = gcc
LD = gcc
RM = rm

OBJS = $(shell ls *.c | sed 's/\.c/.o/g' )

.PHONY: default clean
#.SUFFIXES: .c .o

default : $(TARGET)

$(TARGET) : $(OBJS)
	$(LD) $^ -o $@ $(LIBS)

# Use pattern rule instead of suffix rule
#.c.o
%.o: %.c
	$(CC) -c -o $@ $< $(INCLUDE)

clean:
	$(RM) -f $(OBJS) $(TARGET)

