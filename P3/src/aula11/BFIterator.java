package aula11;

public interface BFIterator<T> {
	boolean hasPrevious();
	T previous();
	boolean hasNext();
	T next();
}
