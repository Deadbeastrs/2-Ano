//NMEC: ...
//NOME: ...
//
// Joaquim Madeira, AlgC, May 2020
// João Manuel Rodrigues, AlgC, May 2020
//
// Adapted from an old example (ca. 2003)
//
// Binary Search Tree storing pointers to items --- Simple Version
//

//// PROCURE ... E COMPLETE ////

#include "BSTree.h"

#include <assert.h>
#include <stdio.h>
#include <stdlib.h>

struct _BSTreeNode {
  void* item;
  struct _BSTreeNode* left;
  struct _BSTreeNode* right;
};

struct _BSTreeHeader {
  unsigned int numNodes;
  struct _BSTreeNode* root;
  compFunc compare;
  printFunc print;
};

BSTree* BSTreeCreate(compFunc compF, printFunc printF) {
  BSTree* t = (BSTree*)malloc(sizeof(struct _BSTreeHeader));
  assert(t != NULL);

  t->numNodes = 0;
  t->root = NULL;
  t->compare = compF;
  t->print = printF;
  return t;
}

static void _treeDestroy(struct _BSTreeNode** pRoot) {
  struct _BSTreeNode* root = *pRoot;

  if (root == NULL) return;

  _treeDestroy(&(root->left));
  _treeDestroy(&(root->right));
  free(root);

  *pRoot = NULL;  
}
// Q: What kind of tree traversal is this function doing?
// Breadth-first or Depth-first?        A: depth-first
// Pre-order, In-order or Post-order?   A: post-order
// Is this the best order here? Why?
// A: A melhor ordem é a utilizada porque ao destruirmos primeiro as folhas o processo da propria 
// destruição torna-se mais facil, de utilizassemos outra ordem teriamos que eleminar nodes que não
// eram folhas e que tornavam o processo muito mais complicado, pois era necessario todo um processo de
// fazer copias das nodes filhas, remover a parent node e voltar a associar tudo na arvore, desta maneira
// como post-order como so eleminamos folhas este problema não existe

void BSTreeDestroy(BSTree** pHeader) {
  BSTree* header = *pHeader;
  if (header == NULL) return;

  _treeDestroy(&(header->root));

  free(header);

  *pHeader = NULL;
}

// FUNÇÕES DE CONSULTA

int BSTreeIsEmpty(const BSTree* header) {
  assert(header != NULL);
  return header->root == NULL;
}

unsigned int BSTreeGetNumberOfNodes(const BSTree* header) {
  assert(header != NULL);
  return header->numNodes;
}

// Determina a altura da (sub)árvore que nasce no nó root.
// (Função interna, que é usada por BSTreeGetHeight.)
static int _treeGetHeight(const struct _BSTreeNode* root) {
  if(root == NULL)
  {
     return -1;
  }
  
  int left = _treeGetHeight(root->left);
  int right = _treeGetHeight(root->right);
  
  if(left > right)
  {
     return left + 1;
  }
  return right +1 ;
}

// Devolve a altura da árvore.
// Segundo a convenção usada, uma árvore vazia tem altura=-1
// e uma árvore de um nó tem altura=0.
int BSTreeGetHeight(const BSTree* header) {
  assert(header != NULL);
  return _treeGetHeight(header->root);
}

// Acha e devolve o menor item da árvore.
// Requer que a árvore não esteja vazia!
void* BSTreeGetMin(const BSTree* header) {
  assert(header != NULL);
  assert(!BSTreeIsEmpty(header));
  // A node mais a esquerda é a mais pequena
  // Complete a função com uma solução ITERATIVA.
  struct _BSTreeNode* start = header->root;
  while(start -> left !=NULL)
  {
     start = start->left;
  }
  return start->item;
}

// Acha e devolve o maior item da (sub)árvore que nasce no nó root.
// (Função interna invocada em BSTreeGetMax.)
static void* _treeGetMax(const struct _BSTreeNode* root) {
  assert(root != NULL);
  //Pela mesma logica de getMin nesta o valor mais alto está a direita
  // Complete a função com uma solução RECURSIVA.
  if(root->right != NULL)
  {
     return _treeGetMax(root->right);
  }
  
  return root->item;
}

// Acha e devolve o maior item da árvore.
// Requer que a árvore não esteja vazia!
void* BSTreeGetMax(const BSTree* header) {
  assert(header != NULL);
  assert(!BSTreeIsEmpty(header));

  return _treeGetMax(header->root);  // chama a função interna recursiva
}

// Does the tree contain an element that compares==0 with this item?
int BSTreeContains(const BSTree* header, const void* item) {
  assert(header != NULL);
  //Percorrer todas as nodes e encontrar ou não o item
  struct _BSTreeNode* root = header->root;
  while (root != NULL) {
    if(header->compare(item,root->item)==0)
    {
       return 1;
    }
    
    if(header->compare(item,root->item)<0)
    {
       root = root->left;
    }
    else
    {
       root = root -> right;
    }
  }
  return 0;
}

// Aplica a função function a cada item da árvore.
// (Função interna usada em BSTreeTraverseINOrder.)
static void
_treeTraverseINOrder(struct _BSTreeNode* root, void (*function)(void* p)) {
  //Ordem crescente
  if (root == NULL) return;
  _treeTraverseINOrder(root->left, function);
  function(root->item);
  _treeTraverseINOrder(root->right, function);
  
}

// Aplica a função function a cada item da árvore.
void BSTreeTraverseINOrder(BSTree* header, void (*function)(void* p)) {
  assert(header != NULL);
  _treeTraverseINOrder(header->root, function);
}

// Operations with items

// Acrescenta um item à árvore, se for válido.
// Devolve 1 (sucesso) se conseguir acrescentar o item 
// ou 0 (falha) se o item colide com algum que já esteja na árvore.
int BSTreeAdd(BSTree* header, void* item) {
  assert(header != NULL);
  
  struct _BSTreeNode* root = header->root;

  int cmp;  
  struct _BSTreeNode* prev = NULL;
  struct _BSTreeNode* current = root;
  while (current != NULL) {
    cmp = header->compare(item, current->item);
    prev = current;
    if (cmp < 0) {
      current = current->left;
    } else if (cmp > 0) {
      current = current->right;
    } else {   // (cmp == 0)
      return 0;  // items that compare==0 are not allowed in this tree
    }
  }

  struct _BSTreeNode* newNode = (struct _BSTreeNode*)malloc(sizeof(*newNode));
  if (newNode == NULL) abort();  
  newNode->item = item;
  newNode->left = newNode->right = NULL;

  // Complete a função fazendo a ancoragem do novo nó no ramo adequado.
  if(root == NULL)
  {
    //Vai ser colocado com sucesso 
    header->numNodes++;
    header->root = newNode;
    return 1;
  }
  if(header->compare(item, prev->item)== 0)
  {
    //Ja existe
    return 0;
  }
  if(header->compare(item, prev->item)<0)
  {
    prev->left= newNode;
  }
  else
  {
    prev->right = newNode;
  }
  header->numNodes++;
  return 1;
}


static void _deleteNextNode(struct _BSTreeNode** pRoot, void** pItem) {
  if ((*pRoot)->left == NULL) {
    // FOUND IT
    struct _BSTreeNode* auxPointer = *pRoot;
    *pItem = auxPointer->item;
    *pRoot = auxPointer->right;
    free(auxPointer);
  } else {
    _deleteNextNode(&((*pRoot)->left), pItem);
  }
}

// This internal function removes the node pointed to by *pPointer.
// Note that pPointer is the address of a variable that points to the node
// to be removed. When it removes the node, it also sets that variable to NULL.
// That variable is either the root field of the _BSTreeHeader struct
// or the left or the right field of the parent _BSTreeNode struct.
// (Pointing to fields inside a struct is something you cannot do in Java.)
static void _removeNode(struct _BSTreeNode** pPointer) {
  struct _BSTreeNode* nodePointer = *pPointer;

  if ((nodePointer->left == NULL) && (nodePointer->right == NULL)) {
    /* A LEAF node */
    free(nodePointer); // FREE it and
    *pPointer = NULL;  // SET field in parent node (or header) to NULL
  }
  else if (nodePointer->left == NULL) {
    /* It has only a RIGHT sub-tree */
    *pPointer = nodePointer->right;
    free(nodePointer);
  }
  else if (nodePointer->right == NULL) {
    /* It has only a LEFT sub-tree */
    *pPointer = nodePointer->left;
    free(nodePointer);
  }
  else {
    /* Node has TWO CHILDREN */
    /* Replace its item with the item of the next node in-order */
    /* And remove that node */
    _deleteNextNode(&(nodePointer->right), &(nodePointer->item));
  }
}

static int _treeRemoveItem(struct _BSTreeNode** pRoot, const void* item,
                           compFunc compare) {
  struct _BSTreeNode* root = *pRoot;

  if (root == NULL) {
    return 0;
  }
  int cmp = compare(item, root->item);
  if (cmp < 0) {
    return _treeRemoveItem(&(root->left), item, compare);
  } else if (cmp > 0) {
    return _treeRemoveItem(&(root->right), item, compare);
  } else {  // (cmp == 0)
    _removeNode(pRoot);
    return 1;
  }
}

int BSTreeRemove(BSTree* header, const void* item) {
  assert(header != NULL);

  if (_treeRemoveItem(&(header->root), item, header->compare) == 1) {
    header->numNodes--;
    return 1;
  }
  return 0;
}

// Funções internas necessárias para as funções
// BSTreeGetKthItem e BSTreeRemoveKthItem.  Leia essas primeiro.

// Count and return the number of nodes of the (sub)tree at the given root.
static unsigned int _getNumNodes(const struct _BSTreeNode* root) {
  if (root == NULL) {
    return 0;
  }
  return 1 + _getNumNodes(root->left) + _getNumNodes(root->right);
}

// Procura e devolve o K-ésimo nó da árvore contado em-ordem.
static struct _BSTreeNode*
_getPointerToKthNode(struct _BSTreeNode* root, unsigned int k) {
  // Esta função está INCORRETA!
  // Teste o programa, encontre o erro e corrija-o.
  // else if (k < numNodesLeftTree), não fazia sentido fazer a mesma condição
  // no if e no else if 
  unsigned int numNodesLeftTree = _getNumNodes(root->left);
  
  if (k < numNodesLeftTree) {
    return _getPointerToKthNode(root->left, k);
  } else if (k > numNodesLeftTree) {
    return _getPointerToKthNode(root->right, k - numNodesLeftTree - 1);
  } else {  // (k == numNodesLeftTree)
    return root;
  }
}
// Q: Admitindo que a árvore tem n nós e está equilibrada (balanced),
// qual é a complexidade computacional da função getPointerToKthNode?
// Justifique resumidamente como chegou ao resultado.
// R: A altura da árvore está diretamente relacionada com a complexidade quando efetuamos uma pesquisa,
// como por exemplo, quando usamos a função getPointerToKthNode. Quanto maior a altura, maior a complexidade. 
// Numa situção ideal de uma árvore equilibrada,
// a complexidade associada pertence a ordem O(log n)
//
// 
// Explique como poderia evitar a chamada a _getNumNodes nesta função.
// Q: O que seria preciso mudar na estrutura de dados?
// R: Tinhamos de implementar um campo novo na struct das nodes que conta o numero de nodes filhas a esquerda e a direita
//
// Q: E que funções teriam de ser modificadas?
// R: Todas as funções que utlizam a _getNumNodes() poderiam ser modificadas para utilizar o novo campo
// da struct da node. Na função BSTreeAdd teriamos que it atualizando os valores destes 2 campos da struct
// ao longo do percurso até onde a nova node vai ser ancorada, caso o seja, se não estas mudanças não tem efeito
//


// Devolve o K-ésimo item da árvore.
// Índice K=0 corresponde ao menor item, K=1 corresponde ao segundo menor,
// K=2 ao terceiro menor, etc.
// Exige que 0 <= k < Number of Nodes.
void* BSTreeGetKthItem(const BSTree* header, unsigned int k) {
  assert(header != NULL);
  assert(0 <= k && k < header->numNodes);

  struct _BSTreeNode* p = _getPointerToKthNode(header->root, k);
  return p->item;
}

// Remove e devolve o K-ésimo item da árvore.
// Índice K=0 corresponde ao menor item, K=1 corresponde ao segundo menor,
// K=2 ao terceiro menor, etc.
// Exige que 0 <= k < Number of Nodes.
void* BSTreeRemoveKthItem(BSTree* header, int k) {
  assert(header != NULL);
  assert(0 <= k && k < header->numNodes);

  struct _BSTreeNode* pNode = _getPointerToKthNode(header->root, k); //Pai do kesimo do anterior
  void* pItem = pNode->item;
  BSTreeRemove(header, pItem);
  return pItem;
}
// A função BSTreeRemoveKthItem percorre os nós duas vezes:
// uma quando faz _getPointerToKthNode e outra quando chama BSTreeRemove.
// Q: Será que se poderia fazer de modo mais eficiente?
// Sugira resumidamente uma solução e explique os seus aspetos essenciais.
// R: Esta função pode ser melhorada pelo facto de percorrer obrigatoriamente a arvore do inicio
// 2 vezes, no _getPointerToKthNode e BSTreeRemove. Se apenas percorrermos a arvore 1 vez e conseguirmos
// a parent node da node que queremos remover conseguimos fazer a adaptação e remover a node apenas com uma procura

// Em alternativa, pode implementar essa solução na função abaixo.

//void* BSTreeRemoveKthItem2(BSTree* header, int k) {
//    
//}


// Tree Visualization

static void _treeView(struct _BSTreeNode* root, int level,
                      const char* edge, printFunc print) {
  if (root == NULL) {
    printf("%*s%s\n", 4*level, edge, "#");  // # represents NULL pointer
  } else {
    _treeView(root->left, level+1, "/", print);
    printf("%*s", 4*level, edge);
    print(root->item);
    printf("\n");
    _treeView(root->right, level+1, "\\", print);
  }
}

void BSTreeView(BSTree* header) {
  _treeView(header->root, 0, ":", header->print);  // : marks the root
  printf("numNodes: %d\n", header->numNodes);
}
