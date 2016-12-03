OBJS = main.o VidHeader.o showErrMsgBox.o bayer.o read-frame.o
CC = g++
DEBUG = -g
CFLAGS = -Wall -c $(DEBUG)
LFLAGS = -Wall $(DEBUG)
STATLIB = libz.a


p1 : $(OBJS)
	$(CC) $(LFLAGS) $(OBJS) -o p1 $(STATLIB)


main.o : main.cpp 

VidHeader.o : VidHeader.cpp 

showErrMsgBox.o : showErrMsgBox.cpp

bayer.o : bayer.cpp

read-frame.o : read-frame.cpp

clean:
	\rm *.o *~ p1