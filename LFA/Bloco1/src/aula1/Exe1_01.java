package aula1;

import java.util.InputMismatchException;
import java.util.Scanner;

public class Exe1_01 {
	public static void main(String[] args) {
		Scanner sc1 = new Scanner(System.in);
		try {
			if(sc1.hasNextInt()) {
				int val0 = sc1.nextInt();
				if(sc1.hasNext()) {
					String val1 = sc1.next();
					if(sc1.hasNextInt()) {
						int val2 = sc1.nextInt();
						System.out.println(valor(val1,val0,val2));
					}
				}
			}
		}catch(InputMismatchException e ) {
			e.printStackTrace();
		}
		sc1.close();
	}
	
	public static double valor(String o,double val1,double val2){
        if(o.equals("+")){
            return val1+val2;
        }
        if(o.equals("-")){
            return val1-val2;
        }
        if(o.equals("/")){
            return val1/val2;
        }
        if(o.equals("*")){
            return val1*val2;
        }
        return 0;
    }
}
