package aula1;

import java.util.Scanner;

class Node {    
    String value; 
    Node left, right; 
          
    Node(String value){ 
        this.value = value; 
        left = null;
        right = null;
    }
}

public class Exe1_07 {
	
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		while(sc.hasNext()) {
			String info = sc.next();
			try {
			Integer.parseInt(info);
			}catch(Exception e) {
			}
			
		}
		sc.close();
	}
	
}
