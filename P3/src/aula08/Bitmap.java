package aula08;

import java.io.EOFException;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.Arrays;
import java.util.Collections;

class Bitmap{
	BitmapFileHeader bitmapFileHeader;
	BitmapInfoHeader bitmapInfoHeader;
	byte[] rgbQuad;
	byte[] data;
	
	public Bitmap(File f) throws IOException {
		bitmapFileHeader = new BitmapFileHeader(f);
		bitmapInfoHeader = new BitmapInfoHeader(f);
		RandomAccessFile file = new RandomAccessFile(f,"rw");
		int size = (int) (file.length() - bitmapFileHeader.offBits);
 		data = new byte[size];
 		byte[] temp = new byte[size];
 		file.seek(bitmapFileHeader.offBits);
 		for(int i = 0;i < size ;i++) {
 			temp[i] = file.readByte();
 		}
 		System.arraycopy(temp, 0, data, 0, size);
		file.close();
	}
	
	public void saveRaw() throws IOException{
		RandomAccessFile ra = new RandomAccessFile("imagem.raw","rw");
		ra.seek(0);
		ra.write(data);
		ra.close();
	}
	public void saveBitmap(String nome) throws IOException{
		RandomAccessFile temp = new RandomAccessFile(nome,"rw");
		temp.seek(0);
		temp.writeShort(Short.reverseBytes(this.bitmapFileHeader.type));
	    temp.writeInt(Integer.reverseBytes(this.bitmapFileHeader.size));
	    temp.writeShort(Short.reverseBytes(this.bitmapFileHeader.reserved1));
	    temp.writeShort(Short.reverseBytes(this.bitmapFileHeader.reserved2));
	    temp.writeInt(Integer.reverseBytes(this.bitmapFileHeader.offBits));
	    temp.writeInt(Integer.reverseBytes(this.bitmapInfoHeader.size));
	    temp.writeInt(Integer.reverseBytes(this.bitmapInfoHeader.width));
	    temp.writeInt(Integer.reverseBytes(this.bitmapInfoHeader.height));
	    temp.writeShort(Short.reverseBytes(this.bitmapInfoHeader.planes));
	    temp.writeShort(Short.reverseBytes(this.bitmapInfoHeader.bitCount));
	    temp.writeInt(Integer.reverseBytes(this.bitmapInfoHeader.compression));
	    temp.writeInt(Integer.reverseBytes(0));
	    temp.writeInt(Integer.reverseBytes(this.bitmapInfoHeader.xPelsPerMeter));
	    temp.writeInt(Integer.reverseBytes(this.bitmapInfoHeader.yPelsPerMeter));
	    temp.writeInt(Integer.reverseBytes(this.bitmapInfoHeader.clrUsed));
	    temp.writeInt(Integer.reverseBytes(this.bitmapInfoHeader.clrImportant));
	    for(int i = 0; i < data.length; i++) {
	    	temp.writeByte(this.data[i]);
	    }
		temp.close();
	}
	
	
	public void resize(String newFile) throws IOException {
        double ratio = 0.25;
        
        int aWidth, aHeight;
        
        int imgWidth = (int) (data.length/bitmapInfoHeader.height); 
        aWidth = (int) (this.bitmapInfoHeader.width - (this.bitmapInfoHeader.width * ratio)); 
        aHeight = (int) (this.bitmapInfoHeader.height - (this.bitmapInfoHeader.height * ratio));
        
        RandomAccessFile temp = new RandomAccessFile(newFile, "rw");
        temp.seek(0);
        temp.writeShort(Short.reverseBytes(this.bitmapFileHeader.type));
        temp.writeInt(Integer.reverseBytes(this.bitmapFileHeader.size-(this.bitmapInfoHeader.sizeImage-(aWidth*aHeight))));
        temp.writeShort(Short.reverseBytes(this.bitmapFileHeader.reserved1));
        temp.writeShort(Short.reverseBytes(this.bitmapFileHeader.reserved2));
        temp.writeInt(Integer.reverseBytes(this.bitmapFileHeader.offBits));
        temp.writeInt(Integer.reverseBytes(this.bitmapInfoHeader.size));
        temp.writeInt(Integer.reverseBytes(aWidth));
        temp.writeInt(Integer.reverseBytes(-aHeight));
        temp.writeShort(Short.reverseBytes(this.bitmapInfoHeader.planes));
        temp.writeShort(Short.reverseBytes(this.bitmapInfoHeader.bitCount));
        temp.writeInt(Integer.reverseBytes(this.bitmapInfoHeader.compression));
        temp.writeInt(Integer.reverseBytes(0));
        temp.writeInt(Integer.reverseBytes(this.bitmapInfoHeader.xPelsPerMeter));
        temp.writeInt(Integer.reverseBytes(this.bitmapInfoHeader.yPelsPerMeter));
        temp.writeInt(Integer.reverseBytes(this.bitmapInfoHeader.clrUsed));
        temp.writeInt(Integer.reverseBytes(this.bitmapInfoHeader.clrImportant));

     	for(int j  = 0; j < bitmapInfoHeader.height; j += 2) {
     	    	int i;
     	    	for (i = 0; i < bitmapInfoHeader.width*3/2; i += 3) {
     	    		temp.write(data[(j * imgWidth) + i*2]);
     	    		temp.write(data[(j * imgWidth) + (i*2 + 1)]);
     	    		temp.write(data[(j * imgWidth) + (i*2 + 2)]);
     	    	}
     	    	for (int k = 0; k < i%4; k++) {
     	    		temp.write((byte) 0);
     	    	}
     	  }
        temp.close();
	}
	
	public void flip(String newFile) throws IOException {
		RandomAccessFile temp = new RandomAccessFile(newFile, "rw");
		temp.seek(0);
        temp.writeShort(Short.reverseBytes(this.bitmapFileHeader.type));
        temp.writeInt(Integer.reverseBytes(this.bitmapFileHeader.size));
        temp.writeShort(Short.reverseBytes(this.bitmapFileHeader.reserved1));
        temp.writeShort(Short.reverseBytes(this.bitmapFileHeader.reserved2));
        temp.writeInt(Integer.reverseBytes(this.bitmapFileHeader.offBits));
        temp.writeInt(Integer.reverseBytes(this.bitmapInfoHeader.size));
        temp.writeInt(Integer.reverseBytes(this.bitmapInfoHeader.width));
        temp.writeInt(Integer.reverseBytes(this.bitmapInfoHeader.height));
        temp.writeShort(Short.reverseBytes(this.bitmapInfoHeader.planes));
        temp.writeShort(Short.reverseBytes(this.bitmapInfoHeader.bitCount));
        temp.writeInt(Integer.reverseBytes(this.bitmapInfoHeader.compression));
        temp.writeInt(Integer.reverseBytes(0));
        temp.writeInt(Integer.reverseBytes(this.bitmapInfoHeader.xPelsPerMeter));
        temp.writeInt(Integer.reverseBytes(this.bitmapInfoHeader.yPelsPerMeter));
        temp.writeInt(Integer.reverseBytes(this.bitmapInfoHeader.clrUsed));
        temp.writeInt(Integer.reverseBytes(this.bitmapInfoHeader.clrImportant));
		int imgWidth = (data.length/bitmapInfoHeader.height);
		for (int i = 0; i < imgWidth; i += 3) {
			int bitsInLine = 0;
			
	    		// for each column of the original image
	    		for(int j  = 0; j < bitmapInfoHeader.height; j++) {
	    			
		    		// write one line on the flipped image
	    			temp.write(data[(j * imgWidth) + i]);
	    			temp.write(data[(j * imgWidth) + i + 1]);
	    			temp.write(data[(j * imgWidth) + i + 2]);
		    		bitsInLine += 3;
		    	}
	
	    		// padding
	    		for (int k = 0; k < bitsInLine%4; k++) {
	    			temp.write((byte) 0);
	    		}
		}
		temp.close();
	}
	
	public int getWidth() {
		return bitmapInfoHeader.width;
	}
	
	public int getHeight() {
		return bitmapInfoHeader.height;
	}
	
	public byte[] getPixelData() {
		return data;
	}
}
