package aula10;

import java.util.Iterator;

public class Teste2 {
	public static void main(String[] args) {
		
		BinarySearchTree<Integer> temp = new BinarySearchTree<>();
		temp.insert(8);
		temp.insert(3);
		temp.insert(1);
		temp.insert(6);
		temp.insert(4);
		temp.insert(7);
		temp.insert(10);
		temp.insert(13);
		temp.remove(4);
		temp.insert(15);
		temp.insert(12);
		temp.insert(11);
		temp.insert(9);
		System.out.println(temp.contains(4));
		Iterator<Integer> it = temp.iterator();
		
		while(it.hasNext()) {
			System.out.println(it.next());
		}
		
		//System.out.println(it.next());
	}
	
}
