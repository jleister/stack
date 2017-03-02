#  Makefile
#    a makefile for the stack example.
#

#            SHELL = 	/bin/sh

#              TOP = .
#      CURRENT_DIR = .

#               CC = g++

#              CPP = /lib/cpp $(STD_CPP_DEFINES)
              CXX = g++

#          DESTDIR =

#        CCOPTIONS =
#           CFLAGS = $(CDEBUGFLAGS) $(CCOPTIONS) $(ALLDEFINES)
#           RM_CMD = $(RM) *.CKP *.ln *.o core errs ,* *~ *.a

#
#

SRCS=	teststack.cpp	\
	stack.cpp	\
	link.cpp

OBJS=	teststack.o		\
	stack.o		\
	link.o

teststack.o:	stack.h

stack.o:	stack.h		\
	link.h

link.o:	link.h


PROGRAMS = testStack

all::  $(PROGRAMS)

#LOCAL_LIBRARIES = $(XLIB)

testStack: $(OBJS)
	$(CXX) -o $@ $(OBJS)
#$(CXX) -o $@ $(OBJS) $(LDOPTIONS) $(LOCAL_LIBRARIES) $(LDLIBS)  $(EXTRA_LOAD_FLAGS)

clean::
	$(RM) testStack 

latex::
	latex stack.tex    

###########################################################################
# common rules for all Makefiles - do not edit

emptyrule::

clean::
	rm *.o

