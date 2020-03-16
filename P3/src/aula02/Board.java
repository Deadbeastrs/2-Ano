package aula02;

import java.util.Arrays;

public class Board {
	private char[][] board;
	
	public Board() {
		this.board = new char[80][80];
	}
	
	public void set(Ponto p, char c) {
		board[p.xval()][p.yval()] = c;
	}
	
	public void tString() {
		for(int i = 0; i < 80; i++) {
			System.out.println(Arrays.toString(board[i]));
		}
	}
	
	public Ponto[] get(char c1) {
		int x = -1;
		int y = -1;
		int count = 0;
		Ponto[] p = new Ponto[80];
		for(char[] b : board) {
			x++;
			y = -1;
			for(char c0 : b) {
				y++;
				if(c0 == c1) {
					p[count] = new Ponto(x,y);
					count++;
				}
			}
		}
		return p;
	}
	
	public String checkWord(Ponto p, String word) {
		for(int k = -1; k <= 1; k++) {
			for(int s = -1; s <= 1; s++) {
				try {
					if(board[p.xval() + k][p.yval() + s] == word.charAt(1)) {
						if(k != 0 || s != 0) {
							if(checkNextLetters(p,new Ponto(k,s),word)) {
								return translateIncrement(k,s);
							}
						}
					}
				}catch(Exception e) {}
			}
		}
		return null;
	}
	
	public String translateIncrement(int k, int s) {
		if(s == 0 && k == 1) {
			return "Down";
		}
		if(s == 1 && k == 0) {
			return "Right";
		}
		if(s == 0 && k == -1) {
			return "Up";
		}
		if(s == -1 && k == 0) {
			return "Left";
		}
		if(s == -1 && k == 1) {
			return "DownLeft";
		}
		if(s == 1 && k == -1) {
			return "UpRight";
		}
		if(s == 1 && k == 1) {
			return "DownRight";
		}
		if(s == -1 && k == -1) {
			return "UpLeft";
		}
		return null;
	}
	
	private boolean checkNextLetters(Ponto p, Ponto inc, String word) {
		boolean check = true;
		try {
			for(int i = 0; i < word.length(); i++) {
				char c = word.charAt(i);
				if(board[p.xval() + i * inc.xval()][p.yval() + i * inc.yval()] != c) {
					check = false;
				}
			}
		}catch(Exception e) {
			return false;
		}
		return check;
	}
	
}
