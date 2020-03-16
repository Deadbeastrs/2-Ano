package aula08;

import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Component;
import java.awt.FlowLayout;
import java.awt.Frame;
import java.awt.GridBagConstraints;
import java.awt.GridBagLayout;
import java.awt.GridLayout;
import java.io.File;
import java.io.IOException;

import javax.swing.JButton;
import javax.swing.JComponent;
import javax.swing.JFileChooser;
import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.SwingConstants;
import javax.swing.border.EmptyBorder;
import javax.swing.filechooser.FileFilter;
import javax.swing.filechooser.FileNameExtensionFilter;
import javax.swing.filechooser.FileSystemView;

public class BMPViewer {
	public static Bitmap b;
	
	public static void main(String[] args) throws IOException {
		File f = fileChooser();
		viewBMP(f);
		b.saveRaw();
		
		
	}
	
	private static File fileChooser() throws IOException {
		JFileChooser jfc = new JFileChooser();
		jfc.setCurrentDirectory(new File(""));
		jfc.setFileFilter(new FileFilter() {
			
			@Override
			public String getDescription() {
				return "BMP Images (*.bmp)";
			}
			
			@Override
			public boolean accept(File f) {
				 if (f.isDirectory()) {
			           return true;
			       } else {
			           String filename = f.getName().toLowerCase();
			           return filename.endsWith(".bmp");
			       }
			   }
		});
		int returnValue = jfc.showOpenDialog(null);

		if (returnValue == JFileChooser.APPROVE_OPTION) {
			File selectedFile = jfc.getSelectedFile();
			return selectedFile;
		}
		return null;
	}
	
	private static void viewBMP(File f) throws IOException {
		JFrame jf = new JFrame("BMPviewer");
		b = new Bitmap(f);
		jf.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		jf.setSize(b.getWidth() + 120,b.getHeight());
		JPanel general = new JPanel();
		JPanel pButton = new JPanel();
		JPanel pImg = new PanelImage(b.getPixelData(),b.getWidth(),b.getHeight());
		System.out.println(pImg.getSize());
		general.setLayout(new BorderLayout());
		pButton.setLayout(new GridLayout(4,0));
		JButton but = new JButton("Save As");
		pButton.add(but);
		JButton but1 = new JButton("Flip Horizontal");
		pButton.add(but1);
		JButton but2 = new JButton("Flip Vertical");
		pButton.add(but2);
		JButton but3 = new JButton("Redimensionar");
		pButton.add(but3);
		actionsBMP(but,but1,but2,but3);
		jf.setContentPane(general);
		jf.getContentPane().add(pImg,BorderLayout.CENTER);
		jf.getContentPane().add(pButton,BorderLayout.EAST);
		jf.setVisible(true);
	}
	
	private static void actionsBMP(JButton b0,JButton b1,JButton b2,JButton b3) {
		b0.addActionListener( e -> saveFile());
	}
	
	private static void saveFile() {
		JFileChooser jfc = new JFileChooser(FileSystemView.getFileSystemView().getHomeDirectory());
		JFrame parentFrame = new JFrame();
		jfc.setDialogTitle("Specify a file to save");
		jfc.setFileFilter(new FileNameExtensionFilter("BMP Files", "bmp"));	
		 
		int userSelection = jfc.showSaveDialog(parentFrame);
		 
		if (userSelection == JFileChooser.APPROVE_OPTION) {
		    File fileToSave = jfc.getSelectedFile();
		    try {
				b.saveBitmap(fileToSave.getAbsolutePath());
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}
}
