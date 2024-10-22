NAME	=	libftprintf.a

LIBPATH = libft
LIB     = $(LIBPATH)/libft.a

SRC_FILES	=	ft_printf.c ft_printf_utils.c
OBJ_FILES	=	$(SRC_FILES:.c=.o)

CC	=	cc
CFLAGS	=	-Wall -Werror -Wextra
INCLUDE	= -I include
AR	=	ar rcs
RM	=	rm -f

all: $(NAME)


$(LIB):
	make -C $(LIBPATH)


$(NAME): $(OBJ_FILES) $(LIB)
	cp $(LIB) $(NAME) 
	$(AR) $(NAME) $(OBJ_FILES) 
	
%.o: %.c
	$(CC) $(CFLAGS) $(INCLUDE) -c $< -o $@

clean:
	$(RM) $(OBJ_FILES)
	make -C $(LIBPATH) clean

fclean: clean
	$(RM) $(NAME)
	make -C $(LIBPATH) fclean

re: fclean all
