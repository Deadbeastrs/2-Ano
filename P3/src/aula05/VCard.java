package aula05;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Scanner;

public class VCard implements Operacao{
	@Override
	public void escrita(Person[] l, File f) throws FileNotFoundException, IOException {
		FileWriter fw = new FileWriter(f);
		fw.write("vCard\n");
		for(Person p : l) {
			fw.write("#" + p.name());
			fw.write("#" + Integer.toString(p.cc()));
			fw.write("#" + p.nascDate() + "\n");
		}
		fw.close();
		
	}
	@Override
	public Person[] leitura(File f) throws FileNotFoundException {
		Scanner sc = new Scanner(f);
		Person p;
		String[] temp = new String[3];
		ArrayList<Person> l = new ArrayList<Person>();
		String type = sc.nextLine();
		if(type.equals("vCard")) {
			while(sc.hasNextLine()) {	
				String temp1 = sc.nextLine();
				temp = temp1.split("#");
				p = new Person(temp[1],Integer.parseInt(temp[2]),new Date(temp[3]));
				l.add(p);
			}
		}
		sc.close();
		return l.toArray(new Person[0]);

	}

}
