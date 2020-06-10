//
// Joaquim Madeira, AlgC, June 2020
// João Manuel Rodrigues, AlgC, June 2020
//
// GraphBellmanFord - Bellman-Ford Alg. for the Shortest Paths Tree
//

#include "GraphBellmanFord.h"

#include <assert.h>
#include <limits.h>
#include <stdio.h>
#include <stdlib.h>

#include "Graph.h"
#include "IntegersStack.h"

struct _GraphBellmanFord {
  int* distance;
  int* predecessor;
  Graph* graph;
  unsigned int startVertex;
};

GraphBellmanFord* GraphBellmanFordExecute(Graph* g, unsigned int startVertex) {
  assert(g != NULL);
  assert(0 <= startVertex && startVertex < GraphGetNumVertices(g));
  GraphBellmanFord* bellmanFord =
      (GraphBellmanFord*)malloc(sizeof(struct _GraphBellmanFord));
  assert(bellmanFord != NULL);
  unsigned int numVertices = GraphGetNumVertices(g);
  bellmanFord->distance = (int*)malloc(numVertices * sizeof(int));
  bellmanFord->predecessor = (int*)malloc(numVertices * sizeof(int));
  bellmanFord->graph = g;
  bellmanFord->startVertex = startVertex;

  for(int i = 0;i < numVertices-1; i++)
  {
    if(i == startVertex)
    {
      bellmanFord-> distance[i] = 0;
    }
    else
    {
      bellmanFord-> distance[i] = 99999;
    }
  }
  
  for(int i = 0; i < numVertices;i++){
    bellmanFord->predecessor[i] = -1;
  }

  bellmanFord->predecessor[startVertex] = -1;
  int flag = 0;
  for(int i = 1; i < numVertices-1;i++){
    flag = 0;
    for(int k = 0; k < numVertices;k++){
      unsigned int* neighbors = GraphGetAdjacentsTo(bellmanFord->graph, k);
      int* weights = GraphGetDistancesToAdjacents(bellmanFord->graph, k);
      if (bellmanFord-> distance[k] < 99999) {
        for (int p = 1; p <= neighbors[0]; p++) {
          unsigned int w = neighbors[p];
          if((bellmanFord-> distance[k] + weights[p]) < bellmanFord->distance[w])
          {
            bellmanFord->distance[w] = bellmanFord->distance[k] + weights[p];
            bellmanFord -> predecessor[w] = k;
            flag = 1;
          }
        }
      }
    }
    if(flag == 0){
      break;
    }
  }
  return bellmanFord;
}
void GraphBellmanFordDestroy(GraphBellmanFord** p) {
  assert(*p != NULL);

  GraphBellmanFord* aux = *p;

  free(aux->distance);
  free(aux->predecessor);

  free(*p);
  *p = NULL;
}

// Getting the result

unsigned int GraphBellmanFordHasPathTo(const GraphBellmanFord* p,
                                       unsigned int v) {
  assert(0 <= v && v < GraphGetNumVertices(p->graph));

  return (p->distance[v] != INT_MAX);
}

int GraphBellmanFordDistanceTo(const GraphBellmanFord* p, unsigned int v) {
  assert(0 <= v && v < GraphGetNumVertices(p->graph));

  return p->distance[v];
}

Stack* GraphBellmanFordPathTo(const GraphBellmanFord* p, unsigned int v) {
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

void GraphBellmanFordShowPath(const GraphBellmanFord* p, unsigned int v) {
  assert(0 <= v && v < GraphGetNumVertices(p->graph));

  Stack* s = GraphBellmanFordPathTo(p, v);

  while (StackIsEmpty(s) == 0) {
    printf("%d ", StackPop(s));
  }

  printf(" --- Distance = %d", p->distance[v]);

  StackDestroy(&s);
}

void GraphBellmanFordDisplay(const GraphBellmanFord* p) {
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
