CC = gcc
CFLAGS = -Wall -Wextra -Werror
TARGET = my_ngram
DEPS = my_ngram.h
OBJ = my_ngram.o

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

my_ngram : $(OBJ)
	$(CC) -o $@ $< $(CFLAGS)

clean:
	rm -f *.o

fclean: clean
	rm -f $(TARGET)

re: fclean $(TARGET)