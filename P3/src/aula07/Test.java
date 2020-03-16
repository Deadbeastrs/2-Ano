package aula07;

import java.io.File;
import java.io.IOException;

public class Test {
	
	public static void main(String[] args) throws IOException {
		File f = new File("Figura.bmp");
		Bitmap lk = new Bitmap(f);
		lk.saveRaw();
	}
	
}
