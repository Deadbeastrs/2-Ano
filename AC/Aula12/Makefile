# To compile all programs, run:
#   make
#
# João Manuel Rodrigues, June 2020

#CC = gcc
#CXX = $(CC)

# Options for the C compiler. (-x c forces C language even for .ccp files)
CFLAGS += -x c
CFLAGS += -g -Wall
CPPFLAGS = $(CFLAGS)

TARGETS = PriorityQueueTest example1 example2 testGraphStack testGraphQueue

all: $(TARGETS)

PriorityQueueTest: PriorityQueueTest.o PriorityQueue.o

testGraphStack: testGraphStack.o Graph.o SortedList.o GraphDFSWithStack.o IntegersStack.o

testGraphQueue: testGraphQueue.o Graph.o SortedList.o GraphBFSWithQueue.o IntegersQueue.o IntegersStack.o
 
example1: example1.o Graph.o SortedList.o

example2: example2.o Graph.o SortedList.o GraphDFSRec.o IntegersStack.o

# Dependencies of source files (obtained with gcc -MM)

PriorityQueue.o: PriorityQueue.c PriorityQueue.h
PriorityQueueTest.o: PriorityQueueTest.c PriorityQueue.h

testGraphStack.o: testGraphStack.c Graph.h SortedList.h GraphDFSWithStack.h IntegersStack.h
testGraphQueue.o: testGraphQueue.c Graph.h SortedList.h GraphBFSWithQueue.h IntegersQueue.h  IntegersStack.h
example1.o: example1.c Graph.h
example2.o: example2.c Graph.h GraphDFSRec.h IntegersStack.h

Graph.o: Graph.c Graph.h SortedList.h

GraphDFSRec.o: GraphDFSRec.c GraphDFSRec.h Graph.h IntegersStack.h

GraphDFSWithStack.o: GraphDFSWithStack.c GraphDFSWithStack.h Graph.h \
							IntegersStack.h
GraphBFSWithQueue.o: GraphBFSWithQueue.c GraphBFSWithQueue.h Graph.h \
							IntegersStack.h IntegersQueue.h

IntegersQueue.o: IntegersQueue.c IntegersQueue.h
IntegersStack.o: IntegersStack.c IntegersStack.h

SortedList.o: SortedList.c SortedList.h


clean:
	rm -f *.o
	rm -f $(TARGETS)


