package aula03;

public class Retangulo extends Figura{
	private double side0;
	private double side1;
	
	public Retangulo(double x0, double y0, double x1, double y1) {
		super(new Ponto(x0,y0), new Ponto(x1, y1));
		getSides();
	}
	
	public Retangulo(double x, double y) {
		super(new Ponto(x,0), new Ponto(0,y));
		this.side0 = x;
		this.side1 = y;
	}
	
	public Retangulo(Retangulo r) {
		super(r.getC(), r.getD());
		getSides();
	}
		
	public void getSides() {
		this.side0 = Math.abs(getC().xval() - getD().xval());
		this.side1 = Math.abs(getC().yval() - getD().yval());
	}
		
	public double area() {
		return side0 * side1;
	}
		
	public double perimetro() {
		return (side0 * 2) + (side1 * 2);
	}
	
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return "Area: " + area() + " Perimetro: " + perimetro() ;
	}
}
