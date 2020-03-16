package aula12;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Scanner;

public class Nokia implements Operacao{
	
@Override
public void escrita(Person[] l, File f) throws IOException {
	FileWriter fw = new FileWriter(f);
	fw.write("Nokia\n");
	for(Person p : l) {
		fw.write(p.name() + "\n");
		fw.write(Integer.toString(p.cc())+ "\n");
		fw.write(p.nascDate()+ "\n");
		fw.write("\n");
	}
	fw.close();
}
@Override
	public Person[] leitura(File f) throws FileNotFoundException {
		Scanner sc = new Scanner(f);
		Person p;
		int c = 0;
		String[] temp = new String[3];
		ArrayList<Person> l = new ArrayList<Person>();
		String type = sc.nextLine();
		if(type.equals("Nokia")) {
			while(sc.hasNextLine()) {
				String temp1 = sc.nextLine();
				if(!temp1.equals("")) {
					temp[c] = temp1;
					c++;
					if(c == 3) {
						p = new Person(temp[0],Integer.parseInt(temp[1]),new Date(temp[2]));
						l.add(p);
						c = 0;
					}
				}
			}
		}
		sc.close();
		return l.toArray(new Person[0]);
	}
}
