package aula09;

public class Cone extends Decorador{
	
	public Cone(Gelado g) {
		super(g);
	}
	
	public void base(int n) {
		super.base(n);
		System.out.print(" em cone ");
	}
	
}
