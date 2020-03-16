package aula01;

import java.util.*;

public class Exe1 {
	public static Scanner sc = new Scanner(System.in);
	public static void main(String[] args) {
		System.out.println("Qual a string?");
		String text = sc.nextLine();
		char c = 0;
		int dCounter = 0;
		boolean high = true;
		boolean low = true;
		String sWord = "";
		int wCounter = 1;
		char exc = 0;
		String rev = "";
		for(int i = 0; i < text.length(); i++) {
			c = text.charAt(i);
			if(i % 2 == 0) {
				exc = c;
			}
			else {
				rev = rev + c + exc;
			}
			if(Character.isDigit(c)) {
				dCounter += 1;
			}
			if(Character.isLowerCase(c)) {
				high = false;
			}
			if(Character.isUpperCase(c)) {
				low = false;
			}
			if(c != ' ') {
				sWord += c;
			}
			else {
				wCounter += 1;
				sWord += "\n";
			}
		}
		System.out.println("Q de Numeros:" + dCounter);
		System.out.println("Tudo maiusculo:" + high);
		System.out.println("Tudo minusculo:" + low);
		System.out.println("Nº palavras : " + wCounter);
		System.out.println("Palavras:" + sWord);
		System.out.println("Reverse: " + rev);
	}
}
