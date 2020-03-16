package aula02;

import java.io.File;
import java.io.IOException;
import java.util.Scanner;

public class TxtGameDecoder {
	private String[] words;
	
	public TxtGameDecoder(File f) throws IOException {
		Board b = new Board();
		getBoard(f,b);
		findWords(b,words);
	}
	
	private void getBoard(File f, Board b) throws IOException{
		Scanner sc = new Scanner(f);
		int h = 0;
		String line = "  ";
		String word = "";
		while(sc.hasNextLine()) {
			if(h < line.length()) {
				line = sc.nextLine();
				for(int i = 0; i < line.length(); i++) {
					Ponto p = new Ponto(h,i);
					b.set(p, line.charAt(i));
				}
				h++;
			}
			else {
				word = sc.nextLine() + ";" + word;
			}
		}
		word = word.replaceAll(", ", ";");
		words = word.split(";");
		sc.close();
	}
	
	private void findWords(Board b, String[] words) {
		for(String w : words) {
			w = w.toUpperCase();
			Ponto[] p = b.get(w.charAt(0));
			for(Ponto p0 : p) {
				if(p0 != null) {
					if(b.checkWord(p0,w) != null) {
						System.out.println(w + ", posicao: " + b.checkWord(p0,w) + ", Ponto: x:" + p0.yval() + ", y:" + p0.xval());
					}
				}
			}
		}
	}
}
