package aula09;

import java.io.IOException;

public class Teste1 {
	public static void main(String[] args) throws IOException {
		ScannerAbeirense b = new ScannerAbeirense(System.in);
		System.out.println(b.next());
		b.close();
	}
}
