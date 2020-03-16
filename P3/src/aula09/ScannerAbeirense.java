package aula09;

import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.Iterator;
import java.util.Scanner;

public class ScannerAbeirense  implements Iterator<String>, Closeable {
	
	private Scanner sc;
	
	public ScannerAbeirense(InputStream b) throws IOException {
		sc = new Scanner(b);
	}
	
	public ScannerAbeirense(File b) throws IOException {
		sc = new Scanner(b);
	}
	
	public ScannerAbeirense(String b) throws IOException {
		sc = new Scanner(b);
	}
	
	@Override
	public void close() throws IOException {
		sc.close();
	}

	@Override
	public boolean hasNext() {
		return sc.hasNext();
	}

	@Override
	public String next() {
		String temp = sc.next();
		temp = temp.replace('v', 'b');
		temp = temp.replace('V', 'B');
		return temp;
	}
	
	public String nextLine() {
		String temp = sc.nextLine();
		temp = temp.replace('v', 'b');
		temp = temp.replace('V', 'B');
		return temp;
	}

}
