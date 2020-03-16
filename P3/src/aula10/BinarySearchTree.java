package aula10;

import java.util.Iterator;

public class BinarySearchTree<T extends Comparable<? super T>> implements Iterable<T>{
	private static class BSTNode<T>{
		T element;
		BSTNode<T> left;
		BSTNode<T> right;
		BSTNode(T theElement) {
			element = theElement;
			left = right = null;
		}
	}
	private BSTNode<T> root;
	private int numNodes;
	
	public BinarySearchTree() {
		root = null;
		numNodes = 0;
	}
	
	public void insert(T value) {
		root = insert(value, root);
	}
	
	public void remove(T value) {
		root = remove(value, root);
	}
	
	public boolean contains(T value) {
		return find(value, root) != null;
	}
	
	public BSTNode<T> insert(T value,BSTNode<T> root){
		if(root == null) {
			root = new BSTNode<T>(value);
		}else {
			BSTNode<T> temp;
			temp = root;
			while(true) {
				if(value.compareTo(temp.element) == 1) {
					if(temp.right == null) {
						temp.right = new BSTNode<T>(value);
						return root;
					}
					temp = temp.right;
				}else if(value.compareTo(temp.element) == -1) {
					if(temp.left == null) {
						temp.left= new BSTNode<T>(value);
						return root;
					}
					temp = temp.left;
				}
				if(temp == null) {
					break;
				}
			}
			numNodes++;
			return root;
		}
		return root;
	}
	
	
	public BSTNode<T> remove(T value,BSTNode<T> root){
		BSTNode<T> temp;
		temp = root;
		BSTNode<T> prev = root;
		while(true) {
			if(value.compareTo(temp.element) == 1) {
				prev = temp;
				temp = temp.right;
			}
			if(value.compareTo(temp.element) == -1) {
				prev = temp;
				temp = temp.left;
			}
			if(temp.element == value) {
				if(temp.element == root.element) {
					root = root.right;
				}
				if(temp.left == null && temp.right == null) {
					prev.left = null;
				}
				else if(temp.left == null && temp.right != null) {
					if(prev.right.element == temp.element) {
						prev.right = temp.right;
					}else {
						prev.left = temp.right;
					}
				}
				else if(temp.left != null && temp.right == null) {
					if(prev.left.element == temp.element) {
						prev.left = temp.left;
					}
					else {
						prev.right = temp.left;
					}
					prev.left = temp.left;
				}
				else if(temp.left != null && temp.right != null) {
					BSTNode<T> temp1 = temp;
					BSTNode<T> prev1 = temp;
					if(temp1.left == null) {
						temp1 = temp.right;
					}
					while(temp1.left != null) {
						prev1 = temp1;
						temp1 = temp1.left;
					}
					temp.element = temp1.element;
					prev1.left = null;
				}
				return root;
			}
		}
	}
	
	private BSTNode<T> find(T value,BSTNode<T> root) {
		BSTNode<T> temp = root;
		while(temp.left != null || temp.right != null) {
			if(value.compareTo(temp.element) == 1) {
				if(temp.element == value) {
					return temp;
				}
				temp = temp.right;
			}
			else if(value.compareTo(temp.element) == -1) {
				if(temp.element == value) {
					return temp;
				}
				temp = temp.left;
			}
			if(temp == null) {
				return null;
			}
			if(value.compareTo(temp.element) == 0) {
				return temp;
			}
		}
		return null;
	}
	
	@Override
	public Iterator<T> iterator() {
		return new BTIterator();
	}
	
	private class BTIterator implements Iterator<T>{
		
		BSTNode<T> temp;
		
		public BTIterator() {
			// era necessario um total deepCopy de root para temp pois estou a remover nodes
			temp = new BSTNode<T>(root.element);
			temp.left = root.left;
			temp.right = root.right;
		}
		
		@Override
		public boolean hasNext() {
			return temp != null;
		}

		@Override
		public T next() {
			BSTNode<T> iterate = temp;
			while(temp != null) {
				if(temp.left==null && temp.right == null) {
					T value2 = temp.element;
					temp = null;
					return value2;
				}
				if(temp.left == null) {
					T value1 = iterate.element;
					temp = BinarySearchTree.this.remove(temp.element,temp);
					return value1;
				}
				while(iterate.left != null) {
					iterate = iterate.left;
				}
				T value = iterate.element;
				temp = BinarySearchTree.this.remove(value,temp);
				return value;
			}
			return null;
		}
		
	}
	
	
}
