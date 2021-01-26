# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: abenouda <abenouda@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/01/22 18:08:41 by abenouda          #+#    #+#              #
#    Updated: 2021/01/26 19:23:45 by abenouda         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libasm.a

SRC = ft_strlen.s ft_strcpy.s ft_strcmp.s ft_strdup.s ft_write.s ft_read.s

OBJ = $(SRC:.s=.o)

NASM = nasm -f macho64

all: $(NAME)
	
$(NAME): $(OBJ)
	ar -rc $(NAME) $(OBJ)
	ranlib $(NAME)

%.o : %.s	
	$(NASM) $^

clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)
	rm -f libasm

re: fclean all

run:
	gcc main.c -L. -lasm $(NAME) -Wl,-no_pie -o libasm