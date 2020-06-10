//
// Joaquim Madeira, AlgC, June 2020
// João Manuel Rodrigues, AlgC, June 2020
//
// GraphDijkstra - Dijkstra Alg for the Shortest Paths Tree
//

#include "GraphDijkstra.h"

#include <assert.h>
#include <limits.h>
#include <stdio.h>
#include <stdlib.h>

#include "Graph.h"
#include "IntegersStack.h"
#include "PriorityQueue.h"

struct _GraphDijkstra {
  int* distance;
  int* predecessor;
  Graph* graph;
  unsigned int startVertex;
};

typedef struct {
   int id;     // item id (assigned automatically = index in ITEM array)
   int pri;    // item priority (assigned by the user)
} ITEM;

// FOR THE PRIORITY QUEUE /////////////////////////////////////////////

// The items in the priority queue will be ID:PRIORITY pairs (type ITEM)

// The priority comparator for items.
int comparator(const void* p1, const void* p2) {
  return ((ITEM*)p1)->pri - ((ITEM*)p2)->pri;
}

// The printer for items.
void printer(void* p) {
  ITEM* pitem = (ITEM*)p;
  printf("%d:%d", pitem->id, pitem->pri);
}

///////////////////////////////////////////////////////////////////////

GraphDijkstra* GraphDijkstraExecute(Graph* g, unsigned int startVertex) {
  assert(g != NULL);
  assert(0 <= startVertex && startVertex < GraphGetNumVertices(g));

  GraphDijkstra* result = (GraphDijkstra*)malloc(sizeof(struct _GraphDijkstra));
  assert(result != NULL);

  unsigned int numVertices = GraphGetNumVertices(g);
  result->distance = (int*)malloc(numVertices * sizeof(int));
  result->predecessor = (int*)malloc(numVertices * sizeof(int));
  result->graph = g;
  result->startVertex = startVertex;

  for(int i = 0;i < numVertices; i++)
  {
    if(i == startVertex)
    {
      result-> distance[i] = 0;
    }
    else
    {
      result-> distance[i] = 99999;
    }
  }
  
  for(int i = 0; i < numVertices;i++){
    result->predecessor[i] = -1;
  }

  result->predecessor[startVertex] = -1;

  PriorityQueue* s = PriorityQueueCreate(GraphGetNumVertices(g),comparator,printer);
  
  int state[GraphGetNumVertices(g)];
  
  for(int i = 0; i < GraphGetNumVertices(g);i++){
    state[i] = 0;
  }
  ITEM item[GraphGetNumVertices(g)];
  ITEM* pitem;
  item[startVertex].id = startVertex;
  item[startVertex].pri = 999;
  PriorityQueueInsert(s,(void*)&item[startVertex]);
  state[result->startVertex] = 1;
  unsigned int w;
  while(!PriorityQueueIsEmpty(s)){
    pitem = (ITEM*)PriorityQueueGetMin(s);
    PriorityQueueRemoveMin(s);
    unsigned int* neighbors = GraphGetAdjacentsTo(result->graph, pitem->id);
    int* weights = GraphGetDistancesToAdjacents(result->graph, pitem->id);
    for (int p = 1; p <= neighbors[0]; p++) {
      w = neighbors[p];
      if((result-> distance[pitem->id] + weights[p] < result-> distance[w])){
        result-> distance[w] = result-> distance[pitem->id] + weights[p];
        result->predecessor[w] = pitem->id;
        if(state[w] == 0){
          item[w].pri = weights[p];
          item[w].id = w;
          PriorityQueueInsert(s,(void*)&item[w]);
          state[w] = 1;
        }
      }
    }
  }
  return result;
}

void GraphDijkstraDestroy(GraphDijkstra** p) {
  assert(*p != NULL);

  GraphDijkstra* aux = *p;

  free(aux->distance);
  free(aux->predecessor);

  free(*p);
  *p = NULL;
}

// Getting the result

unsigned int GraphDijkstraHasPathTo(const GraphDijkstra* p, unsigned int v) {
  assert(0 <= v && v < GraphGetNumVertices(p->graph));

  return (p->distance[v] != INT_MAX);
}

int GraphDijkstraDistanceTo(const GraphDijkstra* p, unsigned int v) {
  assert(0 <= v && v < GraphGetNumVertices(p->graph));

  return p->distance[v];
}

Stack* GraphDijkstraPathTo(const GraphDijkstra* p, unsigned int v) {
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

void GraphDijkstraShowPath(const GraphDijkstra* p, unsigned int v) {
  assert(0 <= v && v < GraphGetNumVertices(p->graph));

  Stack* s = GraphDijkstraPathTo(p, v);

  while (StackIsEmpty(s) == 0) {
    printf("%d ", StackPop(s));
  }

  printf(" --- Distance = %d", p->distance[v]);

  StackDestroy(&s);
}

void GraphDijkstraDisplay(const GraphDijkstra* p) {
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
