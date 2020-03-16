package aula10;

public class Quadrado extends Retangulo{
	
	private double side;
	
	public Quadrado(double side) {
		super(side,side);
		this.side = side;
	}
	
	public Quadrado(double a, double b, double c) { //falta este construtor
		super(c,c);
		this.side = c;
		getSide();
	}
	
	public Quadrado(Quadrado q) { // same here
		super(q.getSide(),q.getSide());
	}
		
	public double getSide() {
		return this.side;
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
