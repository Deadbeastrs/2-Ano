package aula06;

public class Bolseiro extends Estudante {
	double amount;
	
	public Bolseiro(String nome,int cc, Date d) {
		super(nome, cc, d);
	}
	
	public double bolsa() {
		return this.amount;
	}
	
	public void setBolsa(double a) {
		this.amount = a;
	}
	
	@Override
	public String toString() {
		return super.toString() + " Bolsa: " + this.amount;
	}
}
