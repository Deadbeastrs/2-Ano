package aula08;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;

public class BitmapFileHeader {
	short type;
	int size;
	short reserved1; 
	short reserved2; 
	int offBits;
	
	public BitmapFileHeader(File f) throws IOException {
		RandomAccessFile file = new RandomAccessFile(f, "rw");
		file.seek(0);
		type = Short.reverseBytes(file.readShort());
		size = Integer.reverseBytes(file.readInt());
		reserved1 = Short.reverseBytes(file.readShort());
		reserved2 = Short.reverseBytes(file.readShort());
		offBits = Integer.reverseBytes(file.readInt());
	}
	
	public int getOffBits() {
		return offBits;
	}



	@Override
	public String toString() {
		return "BitmapFileHeader [type=" + type + ", size=" + size + ", reserved1=" + reserved1 + ", reserved2="
				+ reserved2 + ", offBits=" + offBits + "]";
	}
	
	
	
}