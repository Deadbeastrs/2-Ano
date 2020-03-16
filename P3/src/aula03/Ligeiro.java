package aula03;

public class Ligeiro extends Veiculo {
	private String tCarta;
	
	public Ligeiro(int cilind, int potencia, int lotacao, int peso, String tCarta) {
		super(cilind, potencia, lotacao, peso);
		this.tCarta = tCarta;
	}
	
	@Override
	public String toString() {
		return "Ligeiro, tipo de carta=" + tCarta + " " + super.toString();
	}
	
}
