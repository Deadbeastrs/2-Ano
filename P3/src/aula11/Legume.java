package aula11;

public class Legume extends Alimento implements Vegetariano{
	private String nome;
	
	public Legume(String nome,double prot, double cal, double peso) {
		super(prot, cal, peso);
		this.nome = nome;
	}

	@Override
	public String toString() {
		return "Legume: " + nome + super.toString();
	}
	
	

}
