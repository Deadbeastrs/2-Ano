package aula12;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;

public interface Operacao {
	void escrita(Person[] l, File f) throws FileNotFoundException, IOException;
	Person[] leitura(File f) throws FileNotFoundException;
}
