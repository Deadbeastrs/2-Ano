package aula03;

public class Veiculo {
	private int cilind;
	private int potencia;
	private int lotacao;
	private int peso;
	
	public Veiculo(int cilind, int potencia, int lotacao, int peso) {
		this.cilind = cilind;
		this.potencia = potencia;
		this.lotacao = lotacao;
		this.peso = peso;
	}

	@Override
	public String toString() {
		return "Veiculo: Clindrada=" + cilind + ", potencia=" + potencia + ", lotacao=" + lotacao + ", peso=" + peso;
	}
	
	
}
