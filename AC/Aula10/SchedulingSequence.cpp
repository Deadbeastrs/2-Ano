//NMEC: ...
//NOME: ...
//
// João Manuel Rodrigues, AlgC, May 2020
// Joaquim Madeira, AlgC, May 2020
//
// A SchedulingSequence based on a BINARY SEARCH TREE.

//// PROCURE ... E COMPLETE ////

#include "SchedulingSequence.h"

#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

// You may add auxiliary definitions and declarations here, if you need to.

// Comparison function to be used in generic BSTree.
static int cmpTI(const void *a, const void *b) {
  return TimeIntervalCompare((TimeInterval *)a, (TimeInterval *)b);
}

// Printing function to be used in generic BSTree.
static void printTI(void *ti) {
  printf("%s\n", TimeIntervalFormat((TimeInterval *)ti));
}

// Create a SchedulingSequence capable of storing intervals.
// (Argument capacity is ignored!)
SchedulingSequence *SchedulingSequenceCreate(int capacity) {
  assert(capacity >= 0);
  SchedulingSequence* s = (SchedulingSequence*) malloc(sizeof(*s));
  if(s != NULL)
  {
     s -> intervals = BSTreeCreate(cmpTI,printTI);
     if(s->intervals == NULL)
     {
        free(s);
     }
     s->size = 0;
  }
  return s;
}

// Destroy SchedulingSequence *pss
void SchedulingSequenceDestroy(SchedulingSequence **pss) {
  assert(*pss != NULL);
  BSTreeDestroy(&(*pss)->intervals);
  free(*pss);
  *pss = NULL;
}

int SchedulingSequenceIsEmpty(SchedulingSequence *ss) { return ss->size == 0; }

int SchedulingSequenceIsFull(SchedulingSequence *ss) {
  return 0;  // NEVER Full!
}

// Add interval *ti to *ss.
// Return true on success,
// return false if *ti overlaps any of the intervals in *ss.
int SchedulingSequenceAdd(SchedulingSequence *ss, TimeInterval *ti) {
  assert(!SchedulingSequenceIsFull(ss));
  for(int n = 0;n<BSTreeGetNumberOfNodes(ss->intervals);n++)
  {
     TimeInterval *temp = (TimeInterval*)BSTreeGetKthItem(ss->intervals,n);
     if(TimeIntervalOverlaps(temp,ti)> 0)
     {
        
        return 0;
     }
  }
  if(BSTreeAdd(ss->intervals,ti) == 1)
  {
     ss->size = ss->size +1;
     return 1;
  }
  
  return 0;
}

// Get the interval at position (idx) of *ss.
// idx=0 is the first position idx=ss->size-1 is the last position.
// Precondition: 0 <= idx < ss->size.
TimeInterval *SchedulingSequenceGet(SchedulingSequence *ss, int idx) {
  assert(0 <= idx && idx < ss->size);
  return (TimeInterval*) BSTreeGetKthItem(ss->intervals,idx);
}

// Remove the interval at position (idx) of *ss, and return it.
// idx=0 is the first position idx=ss->size-1 is the last position.
// Precondition: 0 <= idx < ss->size.
TimeInterval *SchedulingSequencePop(SchedulingSequence *ss, int idx) {
  assert(0 <= idx && idx < ss->size);
  // This implies !SchedulingSequenceIsEmpty(ss).
  TimeInterval* temp = (TimeInterval*) BSTreeRemoveKthItem(ss->intervals,idx);
  ss->size = ss->size -1;
  return temp;
}

// You may add auxiliary definitions and declarations here, if you need to.