package aula10;

public class Circulo extends Figura {
	private double raio;
	
	public Circulo(double r) {
		super(new Ponto(0,0), new Ponto(0,r));
		this.raio = r;
	}
	
	public Circulo(double x, double y, double r) {
		super(new Ponto(x,y), new Ponto(x+r,y));
		this.raio = r;
	}
	
	public Circulo(Circulo c) {
		super(c.getC(), c.getD());
		this.raio = c.raio();
	}
	
	public double area() {
		return Math.PI * Math.pow(raio, 2);
	}
	
	public double perimetro() {
		return 2 * Math.PI * raio;
	}
	
	public double raio() {
		return this.raio;
	}
	
	public boolean intersect(Circulo c) {
		double pdist = Math.sqrt(Math.pow(getC().xval() - c.getC().xval(), 2) + Math.pow(getC().yval() - c.getC().yval(), 2));
		double sraio = this.raio + c.raio();
		if(pdist < sraio) {
			return true;
		}else {
			return false;
		}
	}
	
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return "Circulo: " + super.toString() + " Raio: " + this.raio;
	}
}
