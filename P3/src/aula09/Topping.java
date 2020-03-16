package aula09;

public class Topping extends Decorador {
	
	private String t;
	
	public Topping(Gelado g, String t) {
		super(g);
		this.t = t;
	}
	
	public void base(int n) {
		super.base(n);
		System.out.print(" com " + t);
	}
	
}
