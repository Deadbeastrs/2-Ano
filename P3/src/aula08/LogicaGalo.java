package aula08;

import java.awt.Color;
import java.awt.GridLayout;
import javax.swing.Icon;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JOptionPane;
import javax.swing.JPanel;

public class LogicaGalo{
	
	private String start;
	private boolean p0 = true;
	private Icon imgX = new ImageIcon("X.png");
	private Icon imgO = new ImageIcon("O.png");
	private int[][] board = new int[3][3];
	private JFrame j; 
	public LogicaGalo(String start) {
		this.start = start;
		start();
	}
	
	public void start() {
		this.j = new JFrame("Jogo do galo");
		j.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		j.setSize(500, 500);
		JPanel content = setPanel();
		j.setContentPane(content);
		j.setVisible(true);
	}
	
	public JPanel setPanel() {
		if(start.equals("X")) {
			this.p0 = false;
		}else {
			this.p0 = true;
		}
		JPanel content = new JPanel();
		content.setBackground(Color.white);
		content.setLayout(new GridLayout(3,3,0,0));
		JButton[][] b = new JButton[3][3];
		for(int i = 0,j=0;true;i++) {
			if(i == 3) {
				j++;
				i = 0;
			}
			if(j == 3) {
				break;
			}
			b[j][i] = new JButton();
			b[j][i].setName(j+""+i);
			content.add(b[j][i]);
			b[j][i].addActionListener( e ->{
				JButton temp = (JButton) e.getSource();
				if(temp.getIcon() == null) {
					p0 = !p0;
					if(p0 == true ) {
						temp.setIcon(imgX);
						setboard(temp.getName(), p0);
						
					}else {
						temp.setIcon(imgO);
						setboard(temp.getName(), p0);	
					}	
				}
			});
			
		}
		return content;
	}
	
	private void setboard(String b, boolean p0) {
		String[] temp = b.split("");
		int[] pos = new int[2];
		pos[0] = Integer.parseInt(temp[0]);
		pos[1] = Integer.parseInt(temp[1]);
		if(p0 == true) {
			board[pos[0]][pos[1]] = 1;
		}else {
			board[pos[0]][pos[1]] = 2;
		}
		checkWin(pos);
	}
	
	private void checkWin(int[] pos) {
		int count = 0;
		for(int p = 1;p<3;p++) {
			for(int c = 0; c < 3; c++) {
				if(board[c][0] == p && board[c][1] == p && board[c][2] == p){
					win(p);
					break;
				}
				if(board[0][c] == p && board[1][c] == p && board[2][c] == p) {
					win(p);
					break;
				}
				for(int l = 0; l < 3;l++) {
					if(board[c][l] != 0) {
						count++;
					}
				}
			}
			
			if(board[0][0] == p && board[1][1] == p && board[2][2] == p) {
				win(p);
				break;
			}
			if(board[0][2] == p && board[1][1] == p && board[2][0] == p) {
				win(p);
				break;
			}
			if(count == 9) {
				draw();
				count = 0;
			}
		}
	}
	
	private void win(int p) {
		String w = "Ganhou: ";
		if(p == 1) {
			w = w + "X";
		}
		else if(p == 2) {
			w = w + "O";
		}
		JOptionPane.showMessageDialog(null, 
                w, 
                "Jogo Terminou", 
                JOptionPane.WARNING_MESSAGE);
		board = new int[3][3];
		j.setVisible(false);
		j.dispose();
		start();
	}
	
	private void draw() {
		JOptionPane.showMessageDialog(null, 
                "Empate", 
                "Jogo Terminou", 
                JOptionPane.WARNING_MESSAGE);
		board = new int[3][3];
		j.setVisible(false);
		j.dispose();
		start();
	}
}
