package aula06;

public abstract class Alimento {
	private double prot;
	private double cal;
	private double peso;
	
	public Alimento(double prot, double cal, double peso) {
		this.prot = prot;
		this.cal = cal;
		this.peso = peso;
	}

	@Override
	public String toString() {
		return ", Proteina: " + prot + ", Calorias: " + cal + ", Peso:" + peso;
	}
	
	public double getCal() {
		return this.cal;
	}
	
	public double getProt() {
		return this.prot;
	}
	
	public double getPeso() {
		return this.peso;
	}
	
	@Override
	public boolean equals(Object obj) {
		if(this == obj)
			return true;
		if(obj == null)
			return false;
		if(obj.getClass() != this.getClass())
			return false;
		Alimento temp = (Alimento) obj;
		if(temp.prot == this.prot && this.cal == temp.cal && this.peso == temp.peso) {
			return true;
		}
		
		return false;
	}
	
	@Override
	public int hashCode() {
		return super.hashCode();
	}
	
}
