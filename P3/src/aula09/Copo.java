package aula09;

public class Copo extends Decorador{
	
	public Copo(Gelado g) {
		super(g);
	}
	
	public void base(int n) {
		super.base(n);
		System.out.print(" em copo ");
	}
}
