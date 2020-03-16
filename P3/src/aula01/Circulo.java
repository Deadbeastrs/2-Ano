package aula01;

public class Circulo {
	private double raio;
	private Ponto centro;
	
	public Circulo(Ponto p, double r) {
		this.raio = r;
		this.centro = p;
	}
	
	public Circulo(double x, double y, double r) {
		Ponto t = new Ponto(x,y);
		this.centro = t;
		this.raio = r;
	}
	
	public double area() {
		return Math.PI * Math.pow(raio, 2);
	}
	
	public double perimetro() {
		return 2 * Math.PI * raio;
	}
	
	public boolean intersect(Circulo c) {
		double pdist = Math.sqrt(Math.pow(centro.xval() - c.centro.xval(), 2) + Math.pow(centro.yval() - c.centro.yval(), 2));
		double sraio = this.raio + c.raio;
		if(pdist < sraio) {
			return true;
		}else {
			return false;
		}
	}
	
	public boolean equal(Circulo c) {
		if(c.raio == this.raio) {
			return true;
		}
		else {
			return false;
		}
	}
}
