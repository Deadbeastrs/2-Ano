//
// Joaquim Madeira, AlgC, June 2020
// João Manuel Rodrigues, AlgC, June 2020
//
// GraphShortestPathsWithQueue - QUEUE algorithm for the Shortest Paths Tree
//

#include "GraphShortestPathsWithQueue.h"

#include <assert.h>
#include <limits.h>
#include <stdio.h>
#include <stdlib.h>

#include "Graph.h"
#include "IntegersStack.h"
#include "IntegersQueue.h"

struct _GraphShortestPathsWithQueue {
  int* distance;
  int* predecessor;
  Graph* graph;
  unsigned int startVertex;
};

GraphShortestPathsWithQueue* GraphShortestPathsWithQueueExecute(
    Graph* g, unsigned int startVertex) {
  assert(g != NULL);
  assert(0 <= startVertex && startVertex < GraphGetNumVertices(g));

  GraphShortestPathsWithQueue* ShortestPathsWithQueue =
      (GraphShortestPathsWithQueue*)malloc(
          sizeof(struct _GraphShortestPathsWithQueue));
  assert(ShortestPathsWithQueue != NULL);

  unsigned int numVertices = GraphGetNumVertices(g);

  ShortestPathsWithQueue->distance = (int*)malloc(numVertices * sizeof(int));
  ShortestPathsWithQueue->predecessor = (int*)malloc(numVertices * sizeof(int));
  ShortestPathsWithQueue->graph = g;
  ShortestPathsWithQueue->startVertex = startVertex;
  
  for(int i = 0;i < numVertices; i++)
  {
    if(i == startVertex)
    {
      ShortestPathsWithQueue-> distance[i] = 0;
    }
    else
    {
      ShortestPathsWithQueue-> distance[i] = 99999;
    }
  }
  
  for(int i = 0; i < numVertices;i++){
    ShortestPathsWithQueue->predecessor[i] = -1;
  }
  
  Queue* queue = QueueCreate(GraphGetNumVertices(g));

  QueueEnqueue(queue,startVertex);
  while(!QueueIsEmpty(queue)){
    int v = QueueDequeue(queue);
    unsigned int* neighbors = GraphGetAdjacentsTo(ShortestPathsWithQueue->graph, v);
    int* weights = GraphGetDistancesToAdjacents(ShortestPathsWithQueue->graph, v);
    for (int i = 1; i <= neighbors[0]; i++) {
        unsigned int w = neighbors[i];
        if((ShortestPathsWithQueue->distance[w] == 99999) || (ShortestPathsWithQueue-> distance[v] + weights[i] < ShortestPathsWithQueue->distance[w]))
        {
          QueueEnqueue(queue,w);
          ShortestPathsWithQueue->distance[w] = ShortestPathsWithQueue->distance[v] + weights[i];
          ShortestPathsWithQueue->predecessor[w] = v;
        }
    }
  }
  return ShortestPathsWithQueue;
}

void GraphShortestPathsWithQueueDestroy(GraphShortestPathsWithQueue** p) {
  assert(*p != NULL);

  GraphShortestPathsWithQueue* aux = *p;

  free(aux->distance);
  free(aux->predecessor);

  free(*p);
  *p = NULL;
}
// Getting the result

unsigned int GraphShortestPathsWithQueueHasPathTo(
    const GraphShortestPathsWithQueue* p, unsigned int v) {
  assert(0 <= v && v < GraphGetNumVertices(p->graph));

  return (p->distance[v] != INT_MAX);
}

int GraphShortestPathsWithQueueDistanceTo(const GraphShortestPathsWithQueue* p,
                                          unsigned int v) {
  assert(0 <= v && v < GraphGetNumVertices(p->graph));

  return p->distance[v];
}

Stack* GraphShortestPathsWithQueuePathTo(const GraphShortestPathsWithQueue* p,
                                         unsigned int v) {
  assert(0 <= v && v < GraphGetNumVertices(p->graph));

  Stack* s = StackCreate(GraphGetNumVertices(p->graph));

  if (p->distance[v] == INT_MAX) {
    return s;
  }

  // Store the path
  for (unsigned int current = v; current != p->startVertex;
       current = p->predecessor[current]) {
    StackPush(s, current);
  }

  StackPush(s, p->startVertex);

  return s;
}

// DISPLAYING on the console

void GraphShortestPathsWithQueueShowPath(const GraphShortestPathsWithQueue* p,
                                         unsigned int v) {
  assert(0 <= v && v < GraphGetNumVertices(p->graph));

  Stack* s = GraphShortestPathsWithQueuePathTo(p, v);

  while (StackIsEmpty(s) == 0) {
    printf("%d ", StackPop(s));
  }

  printf(" --- Distance = %d", p->distance[v]);

  StackDestroy(&s);
}

void GraphShortestPathsWithQueueDisplay(const GraphShortestPathsWithQueue* p) {
  printf("---\n");
  
  for(int i = 0;i < GraphGetNumVertices(p->graph) ; i++)
  {
    printf("%d-> ",i);
    for(int k = 0;k < GraphGetNumVertices(p->graph) ; k++)
    {
      if(p->predecessor[k] == i){
        printf("%d,",k);
      }
    }
    if(i != p->startVertex){
      printf("%d, " ,p->predecessor[i]);
    }
    printf("\n");
  }
}
