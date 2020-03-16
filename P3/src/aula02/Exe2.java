package aula02;

import java.io.File;
import java.io.IOException;

public class Exe2 {
	public static void main(String[] args) throws IOException{
		File f = new File("board.txt");
		TxtGameDecoder t = new TxtGameDecoder(f);
	}
}
