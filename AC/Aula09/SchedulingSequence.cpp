//NMEC: ...
//NOME: ...
//
// João Manuel Rodrigues, AlgC, May 2020
//
// A SchedulingSequence based on a SORTED LIST.

//// PROCURE ... E COMPLETE ////

#include <assert.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include "SchedulingSequence.h"

// You may add auxiliary definitions and declarations here, if you need to.

// Comparison function to be used in generic SortedList.
static int cmpTI(const void* a, const void* b) {
  return TimeIntervalCompare((TimeInterval*)a, (TimeInterval*)b);
}

// Create a SchedulingSequence capable of storing intervals.
// (Argument capacity is ignored!)
SchedulingSequence* SchedulingSequenceCreate(int capacity) {
  assert(capacity >= 0);
  SchedulingSequence* s = (SchedulingSequence*) malloc(sizeof(*s));
  s->intervals = ListCreate(cmpTI);
  s->size = 0;
  if(s->intervals == NULL) {
      free(s);
      return NULL;
  }
  return s;
}

// Destroy SchedulingSequence *pss
void SchedulingSequenceDestroy(SchedulingSequence **pss) {
  assert(*pss != NULL);
  ListDestroy(&(*pss)->intervals);
  free(*pss);
  *pss = NULL;
}

int SchedulingSequenceIsEmpty(SchedulingSequence *ss) {
  return ss->size == 0;
}

int SchedulingSequenceIsFull(SchedulingSequence *ss) {
  return 0;  // NEVER Full!
}

// Add interval *ti to *ss.
// Return true on success,
// return false if *ti overlaps any of the intervals in *ss.
int SchedulingSequenceAdd(SchedulingSequence *ss, TimeInterval *ti) {
  assert(!SchedulingSequenceIsFull(ss));
  int i = 0;
  while( i < ss->size){
    ListMoveToNext(ss->intervals);
    if(ListCurrentIsInside(ss->intervals) == 0){
       ListMoveToHead(ss->intervals);
    }
    TimeInterval* t =  (TimeInterval*) ListGetCurrentItem(ss->intervals);
    if(TimeIntervalOverlaps(t, ti) > 0){
      return 0;
    }
    i++;
  }

  if(ListInsert(ss->intervals,ti)==0){
     ss->size++;
     return 1;
  };
  return 0;
}

// Get the interval at position (idx) of *ss.
// idx=0 is the first position idx=ss->size-1 is the last position.
// Precondition: 0 <= idx < ss->size.
TimeInterval *SchedulingSequenceGet(SchedulingSequence *ss, int idx) {
  assert (0 <= idx && idx < ss->size);
  ListMove(ss->intervals, idx);
  return (TimeInterval*) ListGetCurrentItem(ss->intervals);
}

// Remove the interval at position (idx) of *ss, and return it.
// idx=0 is the first position idx=ss->size-1 is the last position.
// Precondition: 0 <= idx < ss->size.
TimeInterval *SchedulingSequencePop(SchedulingSequence *ss, int idx) {
  assert (0 <= idx && idx < ss->size);
  ListMove(ss->intervals, idx);
  ss->size--;
  return (TimeInterval*) ListRemoveCurrent(ss->intervals);
}

// You may add auxiliary definitions and declarations here, if you need to.