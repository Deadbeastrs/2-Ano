package aula11;

import java.io.IOException;

public class Tester {
	public static void main(String[] args) throws IOException {
		DiffWords test = new DiffWords("Words");
		System.out.println("Palavras Diferentes: " + test.getDiffWords());
		System.out.println("Maneira java 8 palavras diferentes: " + test.getDiffWordsStream());
		test.printOccurrence();
		test.printOccurenceStream();
	}

}
