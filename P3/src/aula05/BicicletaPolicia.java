package aula05;

public class BicicletaPolicia extends Bicicleta implements Policia{
	private int id;
	private String tipo;
	

	public BicicletaPolicia(int ano, String cor, int nRodas, int id, String tipo) {
		super(ano, cor, nRodas);
		if(tipo.equals("INEM") || tipo.equals("Bombeiros") || tipo.equals("GNR") || tipo.equals("PSP") || tipo.equals("PJ")) {
			this.id = id;
			this.tipo = tipo;
		}
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
		return  super.toString() + "id=" + id + ", tipo=" + tipo + " Policia!";
	}
	
}
