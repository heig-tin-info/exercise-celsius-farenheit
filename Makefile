CSRCS=$(wildcard *.c)
COBJS=$(patsubst %.c,%.o,$(CSRCS))
EXEC=$(patsubst %.c,%, $(word 1, $(CSRCS)))

CFLAGS=-std=c99 -Wall -Werror

all: $(EXEC) test

%: %.c
	$(CC) $(CFLAGS) $? -o $@ $(LDFLAGS)

test: $(EXEC)
	EXEC=./$< ./test.sh

clean:
	$(RM) $(EXEC) *.o

.PHONY: test all
