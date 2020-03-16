package aula05;

public class Bicicleta extends Veiculo{
	
	public Bicicleta(int ano, String cor, int nRodas) {
		super(ano, cor, nRodas);
	}
	
	@Override
	public String toString() {
		
		return "Bicicleta: " + super.toString();
	}
}
