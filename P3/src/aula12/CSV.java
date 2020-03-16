package aula12;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Scanner;

public class CSV implements Operacao{
	@Override
	public void escrita(Person[] l, File f) throws FileNotFoundException, IOException {
		FileWriter fw = new FileWriter(f);
		fw.write("CSV\n");
		for(Person p : l) {
			fw.write(p.name() + "\t" + p.cc() + "\t" + p.nascDate() + "\n" );
		}
		fw.close();
		
	}
	@Override
	public Person[] leitura(File f) throws FileNotFoundException {
		Scanner sc = new Scanner(f);
		Person p;
		String[] temp = new String[2];
		ArrayList<Person> l = new ArrayList<Person>();
		String type = sc.nextLine();
		if(type.equals("CSV")) {
			while(sc.hasNextLine()) {	
				String temp1 = sc.nextLine();
				temp = temp1.split("\t");
				p = new Person(temp[0],Integer.parseInt(temp[1]),new Date(temp[2]));
				l.add(p);
			}
		}
		sc.close();
		return l.toArray(new Person[0]);

	}
}
