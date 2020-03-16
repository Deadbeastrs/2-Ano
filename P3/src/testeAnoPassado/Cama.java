package testeAnoPassado;

public class Cama extends Mobiliario {
	private double comp;
	private double larg;
	private boolean colchao;
	
	public Cama(String desig, int id, TipoCadeira tipo, double comp, double larg, boolean colchao) {
		super(desig, id, tipo);
		this.comp = comp;
		this.larg = larg;
		this.colchao = colchao;
	}
	
	
}
