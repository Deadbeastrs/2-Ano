package aula06;

import java.util.ArrayList;
import java.util.List;
import java.util.function.Predicate;

public class ListsProcess {
	public static <T> List<T> filter(List<T> l, Predicate<T> f) {
		List<T> temp = new ArrayList<T>();
		temp.clear();
		for(T t : l) {
			if(f.test(t)) {
				temp.add(t);
			}
		}
		return temp;
	}
}