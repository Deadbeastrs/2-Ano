package aula03;

public class Motociclo extends Veiculo{
	private String tCarta;
	
	public Motociclo(int cilind, int potencia, int lotacao, int peso, String tCarta) {
		super(cilind, potencia, lotacao, peso);
		this.tCarta = tCarta;
	}
	
	@Override
	public String toString() {
		return "Motociclo, tipo de carta=" + tCarta + " " + super.toString();
	}
	
	
}
