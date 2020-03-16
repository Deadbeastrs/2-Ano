package aula09;

import java.util.ArrayList;

public class VectorPessoas {

	private ArrayList<Pessoa> list = new ArrayList<Pessoa>();

	public void addPessoa(Pessoa p) {
		list.add(p);
	}

	public void removePessoa(int i) {
		list.remove(i);
	}

	public int totalPessoas() {
		return list.size();
	}

	public Iterator iterator() {
		return (this).new VectorIterator();
	}

	public BFIterator iteratorNew() {
		return (this).new VectorIterator();
	}

	private class VectorIterator implements Iterator,BFIterator{

		private int index = 0;

		@Override
		public boolean hasNext() {
			if(index < list.size()) {
				return true;
			}
			return false;
		}
		@Override
		public Object next() {
			if(hasNext()) {
				Object temp = list.get(index);
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
		public Object previous() {
			if(hasPrevious()) {
				index--;
				Object temp = list.get(index);
				return temp;
			}
			index--;
			return null;
		}
	}
}
