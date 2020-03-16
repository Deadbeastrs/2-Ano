package aula07;

import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;

public class BitmapInfoHeader {
	int size;
	int width;
	int height;
	short planes;
	short bitCount;
	int compression;
	int sizeImage;
	int xPelsPerMeter;
	int yPelsPerMeter;
	int clrUsed;
	int clrImportant;
	
	public BitmapInfoHeader(File f) throws IOException {
		RandomAccessFile file = new RandomAccessFile(f, "r");
		file.seek(14);
		size = Integer.reverseBytes(file.readInt());
		width = Integer.reverseBytes(file.readInt());
		height = Integer.reverseBytes(file.readInt()) * (-1);
		planes = Short.reverseBytes(file.readShort());
		bitCount = Short.reverseBytes(file.readShort());
		compression = Integer.reverseBytes(file.readInt());
		sizeImage = Integer.reverseBytes(file.readInt());
		xPelsPerMeter = Integer.reverseBytes(file.readInt());
		yPelsPerMeter = Integer.reverseBytes(file.readInt());
		clrUsed = Integer.reverseBytes(file.readInt());
		clrImportant = Integer.reverseBytes(file.readInt());
	}

	@Override
	public String toString() {
		return "BitmapInfoHeader [size=" + size + ", width=" + width + ", height=" + height + ", planes=" + planes
				+ ", bitCount=" + bitCount + ", compression=" + compression + ", sizeImage=" + sizeImage
				+ ", xPelsPerMeter=" + xPelsPerMeter + ", yPelsPerMeter=" + yPelsPerMeter + ", clrUsed=" + clrUsed
				+ ", clrImportant=" + clrImportant + "]";
	}
	
	
}
