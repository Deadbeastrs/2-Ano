package aula1;

import java.util.HashMap;
import java.util.InputMismatchException;
import java.util.Scanner;

public class Exe1_05 {
	public static void main(String[] args) {
		Scanner sc1 = new Scanner(System.in);
		HashMap<String, Double> maps = new HashMap<>();
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
			}else if(sc1.hasNext()){
				String var = sc1.next();
				if(sc1.hasNext()) {
					if(sc1.next().equals("=") && sc1.hasNextDouble()) {
						maps.put(var, sc1.nextDouble());
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