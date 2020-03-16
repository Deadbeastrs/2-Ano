package aula11;

public class Carne extends Alimento {
	enum VariedadeCarne{vaca,porco,peru,frango,outra};
	private VariedadeCarne var;

	public Carne(VariedadeCarne v, double prot, double cal, double peso) {
		super(prot, cal, peso);
		var = v;
	}

	@Override
	public String toString() {
		return "Carne: Variedade: " + var + super.toString();
	}

	
}
