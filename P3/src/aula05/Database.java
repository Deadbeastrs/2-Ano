package aula05;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

public class Database {
	private ArrayList<Person> list = new ArrayList<Person>();
	
	public void addDb(Person p) {
		list.add(p);
	}
	
	private String toString(ArrayList<Person> list) {
		String s = "";
		int c = 0;
		for(Person p : list) {
            s = s + c + " " + p.toString() + "\n";
            c++;
        }
		return s;
	}
	
	public String toStringDb() {
		return toString(list);
	}
	
	public void removeDb(int i) {
		list.remove(i);
	}
	
	public String byNome() {
		Collections.sort(list, new Comparator<Person>(){
	        public int compare(Person s1, Person s2) {
	          return s1.name().compareToIgnoreCase(s2.name());
	       }
		});
		return toStringDb();
	}
	
	public String byCC() {
		Collections.sort(list, new Comparator<Person>(){
	        public int compare(Person s1, Person s2) {
	          return s1.cc() - s2.cc();
	       }
		});
		return toStringDb();
	}
	
	public void loadFile(Operacao o, File f) throws FileNotFoundException {
		Person[] l = o.leitura(f);
		for(Person p : l) {
			list.add(p);
		}
	}

	public void saveFile(Operacao o, File f) throws IOException {
		o.escrita(list.toArray(new Person[0]), f);
	}
}