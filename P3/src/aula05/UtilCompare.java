package aula05;

import java.util.Arrays;

public class UtilCompare {
	@SuppressWarnings("unchecked")
	public static <T> Comparable<T> findMax(Comparable<T>[] l) {
		Comparable<T> c = l[0];
		for(int i = 0; i < l.length; i++) {
			if(l[i].compareTo((T) c) == 1 ) {
				c = l[i];
			}
		}
		return c;
	}
	
	@SuppressWarnings("unchecked")
	public static <T> T[] sortArray(Comparable<T>[] l){
		Arrays.sort(l);
		return (T[]) l;
	}
}
