package aula06;

public class Peixe extends Alimento{
	enum TipoPeixe{congelado,fresco}
	private TipoPeixe t;
	
	public Peixe(TipoPeixe t,double prot, double cal, double peso) {
		super(prot, cal, peso);
		this.t = t;
	}
	
	@Override
	public String toString() {
		return "Peixe: Tipo: " + t + super.toString();
	}

}
