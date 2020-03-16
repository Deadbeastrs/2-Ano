package aula03;

public class PesadoPassageiros extends Veiculo{
	
	private String tCarta;
	
	public PesadoPassageiros(int cilind, int potencia, int lotacao, int peso, String tCarta) {
		super(cilind, potencia, lotacao, peso);
		this.tCarta = tCarta;
	}
	
	@Override
	public String toString() {
		return "Pesado de passageiros, tipo de carta=" + tCarta + " " + super.toString();
	}
}
