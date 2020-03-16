package aula05;

public class Automovel extends Veiculo{
	private String matricula;
	private double cilindrada;
	private double vMax;
	
	public Automovel(int ano, String cor, int nRodas, String matricula, double cilindrada, double vMax) {
		super(ano, cor, nRodas);
		this.matricula = matricula;
		this.cilindrada = cilindrada;
		this.vMax = vMax;
	}
	
	@Override
	public String toString() {
		return "Automovel: " + super.toString() + "Matricula=" + matricula + ", Cilindrada=" + cilindrada + ", Velocidade Maxima=" + vMax;
	}
}
