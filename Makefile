CC = gcc
CFLAGS = -Wall -Wextra -Werror -Iinclude
TARGET = my_ngram
SRCDIR = src
INCDIR = include
OBJDIR = obj
SRC = $(wildcard $(SRCDIR)/*.c)
OBJ = $(patsubst $(SRCDIR)/%.c, $(OBJDIR)/%.o, $(SRC))

# Create object directory if it doesn't exist
$(OBJDIR)/%.o: $(SRCDIR)/%.c | $(OBJDIR)
	$(CC) -c -o $@ $< $(CFLAGS)

$(TARGET): $(OBJ)
	$(CC) -o $@ $^ $(CFLAGS)

# Ensure the object directory exists
$(OBJDIR):
	mkdir -p $(OBJDIR)

clean:
	rm -f $(OBJDIR)/*.o

fclean: clean
	rm -f $(TARGET)

re: fclean $(TARGET)
