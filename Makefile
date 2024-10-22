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

# Asegúrate de que la libft esté compilada
$(LIB):
	make -C $(LIBPATH)

# Crear la biblioteca libftprintf.a incluyendo los objetos de ft_printf y libft
$(NAME): $(OBJ_FILES) $(LIB)
	cp $(LIB) $(NAME) # Copia libft.a al nombre de libftprintf.a
	$(AR) $(NAME) $(OBJ_FILES) # Agrega los objetos de ft_printf a libftprintf.a

%.o: %.c
	$(CC) $(CFLAGS) $(INCLUDE) -c $< -o $@

clean:
	$(RM) $(OBJ_FILES)
	make -C $(LIBPATH) clean

fclean: clean
	$(RM) $(NAME)
	make -C $(LIBPATH) fclean

re: fclean all
