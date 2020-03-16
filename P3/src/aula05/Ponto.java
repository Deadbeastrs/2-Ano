package aula05;

public class Ponto {
	private double x;
	private double y;
	
	public Ponto(double x, double y){
		this.x = x;
		this.y = y;
	}
	
	public double xval() {
		return this.x;
	}
	
	public double yval() {
		return this.y;
	}
	
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return "x: " + x + " y: " + y;
	}
	
	@Override
	public boolean equals(Object obj) {
		if(this != obj) {
			return false;
		}
		if(obj == null) {
			return false;
		}
		if(getClass() != obj.getClass()) {
			return false;
		}
		Ponto temp = (Ponto) obj;
		if(temp.xval() != x || temp.yval() != y) {
			return false;
		}
		return true;
	}
}
