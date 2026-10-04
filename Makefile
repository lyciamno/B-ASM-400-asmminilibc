##
## EPITECH PROJECT, 2023
## Makefile
## File description:
## make files
##

SRC	=	strlen.asm	\
		strchr.asm	\
		strrchr.asm	\
		memset.asm	\
		memcpy.asm	\
		strcmp.asm	\
		strncmp.asm	\
		strcasecmp.asm	\
		strcspn.asm	\

OBJ	=	$(SRC:.asm=.o)

NAME	=	libasm.so

all:	$(NAME)

$(NAME):	$(OBJ)
	ld -shared -o $(NAME) $(OBJ)

%.o: %.asm
		nasm -f elf64 $< -o $@

clean:
	rm -f $(OBJ)
	rm -f *~

fclean: clean
	rm -f $(NAME)

re: fclean all
