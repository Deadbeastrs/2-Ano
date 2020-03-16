package testeAnoPassado;

public class CamaArticulada extends Cama{
	private boolean elect;

	public CamaArticulada(String desig, int id, TipoCadeira tipo, double comp, double larg, boolean colchao,
			boolean elect) {
		super(desig, id, tipo, comp, larg, colchao);
		this.elect = elect;
	}

	
	
	
}
