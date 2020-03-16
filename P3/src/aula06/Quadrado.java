package aula06;

public class Quadrado extends Figura{
	
	private double side;
	
	public Quadrado(double side) {
		super(new Ponto(0,0), new Ponto(side,side));
		this.side = side;
	}
	
	public Quadrado(double a, double b, double c) { //falta este construtor
		super(new Ponto(a,b), new Ponto(a+c,b+c));
		getSide();
	}
	
	public Quadrado(Quadrado q) { // same here
		super(q.getC(),q.getD());
		getSide();
	}
		
	public void getSide() {
		this.side =  Math.abs(this.getC().xval() - this.getD().xval());
	}
		
	public double area() {
		return side * side;
	}
		
	public double perimetro() {
		return (side * 4);
	}
	
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return "Quadrado: " + super.toString() + " lado: " + side;
	}
	
}
