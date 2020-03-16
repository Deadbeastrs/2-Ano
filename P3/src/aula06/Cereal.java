package aula06;

public class Cereal extends Alimento implements Vegetariano{
	private String nome;
	
	public Cereal(String nome,double prot, double cal, double peso) {
		super(prot, cal, peso);
		this.nome = nome;
	}

	@Override
	public String toString() {
		return "Cereal: " + nome + super.toString();
	}

}
