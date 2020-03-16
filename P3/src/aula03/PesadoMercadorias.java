package aula03;

public class PesadoMercadorias extends Veiculo{
	private String tCarta;
	
	public PesadoMercadorias(int cilind, int potencia, int lotacao, int peso, String tCarta) {
		super(cilind, potencia, lotacao, peso);
		this.tCarta = tCarta;
	}
	
	@Override
	public String toString() {
		return "Pesado de mercadorias, tipo de carta=" + tCarta + " " + super.toString();
	}
}
