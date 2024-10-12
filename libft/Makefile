NAME	= libft.a

SRC_FILES	=	ft_atoi.c ft_bzero.c ft_calloc.c ft_isalnum.c ft_isalpha.c \
				ft_isascii.c ft_isdigit.c ft_isprint.c ft_memchr.c ft_memcmp.c \
				ft_memcpy.c ft_memmove.c ft_memset.c ft_strchr.c ft_strdup.c \
				ft_strlcat.c ft_strlcpy.c ft_strlen.c ft_strncmp.c ft_strnstr.c \
				ft_strrchr.c ft_tolower.c ft_toupper.c ft_substr.c ft_strjoin.c	 \
			 	ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c \
				ft_strtrim.c ft_itoa.c ft_split.c ft_strmapi.c ft_striteri.c

OBJ_FILES	= $(SRC_FILES:.c=.o)

CC = cc
CFLAGS = -Wall -Werror -Wextra
INCLUDE	= -I include
AR = ar rcs
RM = rm -rf

all: $(NAME)

$(NAME): $(OBJ_FILES)
			$(AR) $(NAME) $(OBJ_FILES)
			
%.o: %.c
			$(CC) $(CFLAGS) $(INCLUDE) -c $< -o $@

clean:
	$(RM) $(OBJ_FILES)

fclean: clean
	$(RM) $(NAME)

re: fclean all

.PHONY: all clean fclean re
