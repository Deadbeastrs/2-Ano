package aula07;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;

public class Aeroporto {
	
	public static void main(String[] args) throws IOException {
		ArrayList<Voo> list = new ArrayList<Voo>();
		readFile("voos", "companhias", list);
		
		//System.out.println("Hora	Voo	Companhia	Origem	Atraso\n" + list.toString());
		//writeFile(list);
		//atrasoMedio(list);
		//writeChegadas(list);
		writeBin(list);
		readBin();
	}
	
	public static void readFile(String f1, String f2, ArrayList<Voo> list) throws IOException {
		Path path0 = Paths.get(f1 + ".txt");
		List<String> lines = Files.readAllLines(path0);
		for(int i = 0; i < lines.size(); i++) {
			if(i != 0) {
				String line = lines.get(i);
				String[] temp = line.split("	");
				String g = "";
				for(int p=0; p<2;p++) {
					g = g + temp[1].charAt(p);
				}
				String comp = getComp(g, f2);
				if(temp.length == 3) {
					list.add(new Voo(new Hora(temp[0]), temp[1], comp,temp[2], new Hora("00:00")));
				}else {
					list.add(new Voo(new Hora(temp[0]), temp[1], comp,temp[2], new Hora(temp[3])));
				}
			}
		}
	}
	
	public static String getComp(String letter, String f2) throws IOException {
		Path path0 = Paths.get(f2 + ".txt");
			List<String> lines = Files.readAllLines(path0);
			for(String line: lines) {
				String[] conv = line.split("	");
				if(conv[0].equals(letter)) {
					return conv[1];
				}
			}
		return letter;
	}
	
	public static void writeFile(ArrayList<Voo> list) throws IOException {
		 Path newFile = Paths.get("Infopublico.txt");
		 if(!Files.exists(newFile)) {
			 Files.createFile(newFile);
		 }
         BufferedWriter writer = Files.newBufferedWriter(newFile, Charset.forName("UTF-8"));
         writer.write("Hora	Voo	Companhia	Origem	Atraso\n");
         for(Voo v : list) {
        	 writer.write(v.toString());
         }
         writer.close();
	}
	
	public static void atrasoMedio(ArrayList<Voo> list) {
		ArrayList<String> companhias = new ArrayList<>();
		for(Voo v: list) {
			if(!companhias.contains(v.getCompanhia())) {
				companhias.add(v.getCompanhia());
			}
		}
		Hora f = new Hora("00:00");
		for(String c : companhias) {
			for(Voo v: list) {
				if(c.equals(v.getCompanhia())) {
					f = f.addHoras(v.getAtraso());
				}
			}
			System.out.println("Companhia: " + c + " Atraso: " + f);
			f = new Hora("00:00");
		}
	}
	
	public static void writeChegadas(ArrayList<Voo> list) throws IOException {
		ArrayList<String> origem = new ArrayList<>();
		Path newFile = Paths.get("cidades.txt");
		if(!Files.exists(newFile)) {
			 Files.createFile(newFile);
		}
		BufferedWriter writer = Files.newBufferedWriter(newFile, Charset.forName("UTF-8"));
		writer.write("Origem	Voos\n");
		for(Voo v: list) {
			if(!origem.contains(v.getCompanhia())) {
				origem.add(v.getCompanhia());
			}
		}
		int count = 0;
		for(String c : origem) {
			for(Voo v: list) {
				if(c.equals(v.getCompanhia())) {
					count++;
				}
			}
			writer.write(c + "\t" + count + "\n");
			count = 0;
		}
        writer.close();
	}
	
	public static void writeBin(ArrayList<Voo> list) throws IOException {
		Path newFile = Paths.get("Infopublico.bin");
		if(!Files.exists(newFile)) {
			Files.createFile(newFile);
		}
		String all = "Hora	Voo	Companhia	Origem	Atraso\n";
		for(Voo v : list) {
			all	= all + v.toString();
        }
		byte[] b = all.getBytes(StandardCharsets.UTF_8);
		Files.write(Paths.get("Infopublico.bin"), b);
	}
	
	public static void readBin() throws IOException {
		File f = new File("Infopublico.bin");
		RandomAccessFile file = new RandomAccessFile(f, "r");
		String line;
		while ( (line = file.readLine()) != null ) {
			System.out.println(line);
	    }
	}
	
}
