package aula11;

import java.util.ArrayList;
import java.util.Iterator;

public class VectorGeneric <T>{
	
	private ArrayList<T> list = new ArrayList<T>();
	
	public void addElem(T p) {
		list.add(p);
	}
	
	public void removeElem(int i) {
		list.remove(i);
	}
	
	public int totalElem() {
		return list.size();
	}
	
	public Iterator<T> iterator() {
		return (this).new VectorIterator();
	}
	
	public BFIterator<T> iteratorNew() {
		return (this).new VectorIterator(); 
	}
	
	private class VectorIterator implements Iterator<T>,BFIterator<T>{
		
		private int index = 0;
		
		@Override
		public boolean hasNext() {
			if(index < list.size()) {
				return true;
			}
			return false;
		}
		@Override
		public T next() {
			if(hasNext()) {
				T temp = list.get(index);
				index++;
				return temp;
			}
			index++;
			return null;
		}
		@Override
		public void remove() {
			if(index != 0) {
				list.remove(index);
				index--;
			}
		}
		@Override
		public boolean hasPrevious() {
			if(index > 0) {
				return true;
			}
			return false;
		}
		@Override
		public T previous() {
			if(hasPrevious()) {
				index--;
				T temp = list.get(index);
				return temp;
			}
			index--;
			return null;
		}
	}
}
