package aula11;

public class Retangulo extends Figura{
	private double comp;
	private double alt;
	
	public Retangulo(double x0, double y0, double comp, double alt) {
		super(new Ponto(x0,y0), new Ponto(x0 + comp,y0 + alt));
		this.comp = comp;
		this.alt = alt;
	}
	
	public Retangulo(double x, double y) {
		super(new Ponto(x,0), new Ponto(0,y));
		this.comp = x;
		this.alt = y;
	}
	
	public Retangulo(Retangulo r) {
		super(r.getC(), r.getD());
		getSides();
	}
	
	public void getSides() {
		this.comp = Math.abs(getC().xval() - getD().xval());
		this.alt = Math.abs(getC().yval() - getD().yval());
	}
	
	public double area() {
		return comp * alt;
	}
		
	public double perimetro() {
		return (comp * 2) + (alt * 2);
	}
	
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return "Retangulo: " + super.toString() + " Altura: " + this.alt + " Comprimento:" + this.comp ;
	}
}
