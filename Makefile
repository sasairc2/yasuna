#
#    Makefile for yasuna
#

TARGET	= yasuna
DICNME	= yasuna-quotes
# DICNME = yasuna-quotes-lite
PREFIX	:= /usr/local
BINDIR	:= $(PREFIX)/bin
DICDIR	:= $(PREFIX)/share/$(TARGET)
MANDIR	:= $(PREFIX)/share/man/ja/man6
MAKE	:= make
CC	:= cc
RM	:= rm
CFLAGS	:= -O2 -g -Wall
LDFLAGS	:=
CMDLINE	:= 0
export

all clean install-bin:
	@$(MAKE) -C ./src	$@

install-quotes:
	@$(MAKE) -C ./quotes	$@
	
install-man:
	@$(MAKE) -C ./docs	$@
	
install-zsh-compdef: 
	@$(MAKE) -C ./compdef	$@

install: install-bin		\
	 install-quotes		\
	 install-man		\
	 install-zsh-compdef

.PHONY:	all			\
	install			\
	install-bin		\
	install-quotes		\
	install-man		\
	install-zsh-compdef	\
	clean
