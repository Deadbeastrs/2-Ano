package aula05;

public abstract class Figura implements Comparable<Figura>{
	private Ponto c;
	private Ponto d;
	
	public Figura(Ponto c, Ponto d) {
		this.c = c;
		this.d = d;
	}
	
	public Ponto getC() {
		return this.c;
	}
	
	public Ponto getD() {
		return this.d;
	}
	
	public abstract double area();
	
	public abstract double perimetro();
	
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return "Centro x: " + c.xval() + " y: " + c.yval();
	}
	
	@Override
	public boolean equals(Object obj) {
		if(this == obj) {
			return true;
		}
		if(obj == null) {
			return false;
		}
		if(getClass() != obj.getClass()) {
			return false;
		}
		Figura temp = (Figura) obj;
		if(getC() == null) {
			if(temp.getC() != null) {
				return false;
			}
		}
		else if(!getC().equals(temp.getC())) {
			return false;
		}
		return true;
	}
	
	@Override
	public int compareTo(Figura f) {
		if(f == null) {
			throw new NullPointerException("Nulo");
		}
		if(this.area() - f.area() < 0) {
			return -1;
		}
		else if(this.area() - f.area() > 0) {
			return 1;
		}
		return 0;
	}
}
