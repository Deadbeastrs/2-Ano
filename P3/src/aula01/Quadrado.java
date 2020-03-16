package aula01;

public class Quadrado {
	private Ponto lup;
	private Ponto rdown;
	private double side;
	
	public Quadrado(Ponto lup, Ponto rdown) {
		this.lup = lup;
		this.rdown = rdown;
		getSides();
	}
		
	public void getSides() {
		this.side = Math.abs(rdown.xval() - lup.xval());
	}
		
	public double area() {
		return side * side;
	}
		
	public double perimetro() {
		return (side * 4);
	}
}
