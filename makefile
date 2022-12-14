# --------------------------------------------------------------------
#
# This makefile for Linux was written on Oct 10, 2022 by Marmayogi, Astrologer and Palmist, Sri Mahakali Jothida Nilayam, Coimbatore, India.
#
# Usage-1:
#	Invocation of make from terminal: without any command line arguments or with one argument "all" as follows:
#
#	$ make
#	or
#	$ make all
#		
# 	The above commands will create "ttf2postscriptcid" which is an executable binary file.
#
# Usage-2:
#	Invocation of make from terminal, with a command line argument "clean", as follows:
#
#	$ make clean
#		
# 	This will delete the following:
#		- ttf2postscriptcid executable binary
#		- main.o
#
# --------------------------------------------------------------------

#all: ttf2postscriptcid

objects = main.o


CC = g++
CFLAGS  = -g -Wall

all: ttf2postscriptcid

ttf2postscriptcid:  $(objects)
	$(CC) $(CFLAGS) -o ttf2postscriptcid $(objects)

main.o: main.cpp ttf.h
	$(CC) $(CFLAGS) -c main.cpp

clean:
	@rm ttf2postscriptcid $(objects)
