package testeAnoPassado;

public class Maca extends Marquesa implements Transporte{
	private int nGrades;
	private TipoTransporte t;
	
	public Maca(String desig, int id, TipoCadeira tipo, double comp, double larg, boolean colchao,int nGrades) {
		super(desig, id, tipo, comp, larg, colchao, false);
		this.nGrades = nGrades;
	}
	@Override
	public void setTipo(TipoTransporte t) {
		this.t = t;
		
	}

	@Override
	public TipoTransporte getTipo() {
		return t;
	}
}
