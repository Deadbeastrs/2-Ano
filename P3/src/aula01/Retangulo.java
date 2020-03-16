package aula01;

public class Retangulo {
	private Ponto lup;
	private Ponto rdown;
	private double side0;
	private double side1;
	
	public Retangulo(Ponto lup, Ponto rdown) {
		this.lup = lup;
		this.rdown = rdown;
		getSides();
	}
		
	public void getSides() {
		this.side0 = Math.abs(rdown.xval() - lup.xval());
		this.side1 = Math.abs(rdown.yval() - lup.yval());
	}
		
	public double area() {
		return side0 * side1;
	}
		
	public double perimetro() {
		return (side0 * 2) + (side1 * 2);
	}
}
