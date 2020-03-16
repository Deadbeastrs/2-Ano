package aula1;

import java.util.EmptyStackException;
import java.util.InputMismatchException;
import java.util.Scanner;
import java.util.Stack;

public class Exe1_02 {
	public static void main(String[] args) {
		Stack<Double> s = new Stack<Double>();
		Scanner sc1 = new Scanner(System.in);
		try {
			while(sc1.hasNextLine()) {
				if(sc1.hasNextDouble()) {
					s.push(sc1.nextDouble());
				}else {
					String op = sc1.next();
					if(op.equals("+") || op.equals("-") || op.equals("*") || op.equals("/")){
						double temp0 = s.pop(); 
						double temp1 = s.pop();
						s.push(valor(op,temp1,temp0));
					}else {
						throw new InputMismatchException();
					}
				}
				System.out.println(s.toString());
			}
			sc1.close();
		}catch(InputMismatchException e ) {
			System.out.println("token inexistente");
		}
		catch(EmptyStackException e){
			System.out.println("formato mal");
		}
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
