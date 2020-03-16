package aula13;

import java.io.IOException;
import java.nio.file.Paths;

public class TestFindPair {
	public static void main(String[] args) throws IOException {
		FindPair f = new FindPair(Paths.get("t.txt"));
	}
}
