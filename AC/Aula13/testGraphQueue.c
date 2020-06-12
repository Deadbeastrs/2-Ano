//
// Joaquim Madeira, AlgC, May 2020
// João Manuel Rodrigues, AlgC, May 2020
//
// Graph EXAMPLE
//

#include <stdio.h>  
#include "Graph.h"
#include "GraphBFSWithQueue.h"

int main(void) {
  Graph* g01 = GraphCreate(9, 0, 0);

  GraphAddEdge(g01, 0, 5);
  GraphAddEdge(g01, 2, 4);
  GraphAddEdge(g01, 2, 3);
  GraphAddEdge(g01, 1, 2);
  GraphAddEdge(g01, 0, 1);
  GraphAddEdge(g01, 3, 4);
  GraphAddEdge(g01, 3, 5);
  GraphAddEdge(g01, 0, 2);


  GraphDisplay(g01);

  FILE *fp;
  fp = fopen("Grafos/SWtinyEWD.txt", "r");
  Graph* g03 = GraphFromFile(fp);
  fclose(fp);

  GraphDisplay(g03);

  Graph* g02 =GraphCopy(g03);

  GraphDisplay(g02);

  GraphBFSWithQueue* traversal = GraphBFSWithQueueExecute(g01, 0);

  printf("Path from 0 to 5: ");
  GraphBFSWithQueueShowPath(traversal, 5);
  printf("\n");

  GraphBFSWithQueueDestroy(&traversal);

  GraphDestroy(&g01);

  return 0;
}
