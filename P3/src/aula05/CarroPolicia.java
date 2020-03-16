package aula05;

public class CarroPolicia extends Automovel implements Policia, Motorizado {
	private int id;
	private double potencia;
	private double consumo;
	private String combustivel;
	private String tipo;

	public CarroPolicia(int ano, String cor, int nRodas, String matricula, double cilindrada, double vMax, int id,
			double potencia, double consumo, String combustivel, String tipo) {
		super(ano, cor, nRodas, matricula, cilindrada, vMax);
		if(tipo.equals("INEM") || tipo.equals("Bombeiros") || tipo.equals("GNR") || tipo.equals("PSP") || tipo.equals("PJ")) {
			this.id = id;
			this.potencia = potencia;
			this.consumo = consumo;
			this.combustivel = combustivel;
			this.tipo = tipo;
		}
	}

	@Override
	public double getPotencia() {
		return this.potencia;
	}

	@Override
	public double getConsumo() {
		return this.consumo;
	}

	@Override
	public String getCombustivel() {
		return this.combustivel;
	}

	@Override
	public String getTipo() {
		return this.tipo;
	}

	@Override
	public double getID() {
		return this.id;
	}
	
	public String toString() {
		return  super.toString() + "id=" + id + ", potencia=" + potencia + ", consumo=" + consumo + ", combustivel="
				+ combustivel + ", tipo=" + tipo + " Policia!";
	}

}
