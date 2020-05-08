//NMEC: ...
//NOME: ...

// Complete the functions (marked by ...)
// so that it passes all tests in DateTimeTest.

#include <assert.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include "SchedulingSequence.h"

// You may add auxiliary definitions and declarations here, if you need to.



// Create a SchedulingSequence capable of storing up to (capacity) intervals.
SchedulingSequence* SchedulingSequenceCreate(int capacity) {
  assert(capacity >= 0);
  SchedulingSequence* d = (SchedulingSequence*) malloc(sizeof(*d));
  if(d != NULL){
    d->capacity = capacity;
    TimeInterval** t = (TimeInterval**) malloc(capacity * sizeof(**t));
    d->size = 0;
    d->intervals = t; 
  }
  return d;
}

// Destroy SchedulingSequence *pss
void SchedulingSequenceDestroy(SchedulingSequence **pss) {
  assert(*pss != NULL);
  free((*pss)->intervals);
  free(*pss);
  *pss = NULL;
}

int SchedulingSequenceIsEmpty(SchedulingSequence *ss) {
  return ss->size == 0;
}

int SchedulingSequenceIsFull(SchedulingSequence *ss) {
  return ss->size == ss->capacity;
}

// Add interval *ti to *ss.
// Return true on success,
// return false if *ti overlaps any of the intervals in *ss.
int SchedulingSequenceAdd(SchedulingSequence *ss, TimeInterval *ti) {
  assert(!SchedulingSequenceIsFull(ss));
  int c = 0;
  while( (c < ss->size) && TimeIntervalCompare(ss->intervals[c], ti) <= 0)
  {
    if(TimeIntervalOverlaps(ss->intervals[c], ti) > 0){
      return 0;
    }
    c++;
  }

  if(c == ss->size) ss->intervals[c] = ti;
  else {

    for (int i = ss->size ; i > c; i--)
    {
      ss->intervals[i] = ss->intervals[i-1];
    }
    ss->intervals[c] = ti;
  }

  ss->size++;
  return 1;
}

// Get the interval at position (idx) of *ss.
// idx=0 is the first position idx=ss->size-1 is the last position.
// Precondition: 0 <= idx < ss->size.
TimeInterval *SchedulingSequenceGet(SchedulingSequence *ss, int idx) {
  assert (0 <= idx && idx < ss->size);
  return *(ss->intervals + idx);
  
}

// Remove the interval at position (idx) of *ss, and return it.
// idx=0 is the first position idx=ss->size-1 is the last position.
// Precondition: 0 <= idx < ss->size.
TimeInterval *SchedulingSequencePop(SchedulingSequence *ss, int idx) {
  assert (0 <= idx && idx < ss->size);
  TimeInterval* tt = (TimeInterval*) malloc(sizeof(*tt));
  tt = ss->intervals[idx];
    
  for (int i = idx; i < (ss->size - 1); i++)
  {
    ss->intervals[i] = ss->intervals[i+1];
  }

  ss->size--;
  return tt;
}

// You may add auxiliary definitions and declarations here, if you need to.


