package aula09;

public abstract class Decorador implements Gelado{
	
	private Gelado temp;
	
	protected Decorador(Gelado g) {
		temp = g;
	}
	
	@Override
	public void base(int n) {
		temp.base(n);
	}
	
}
