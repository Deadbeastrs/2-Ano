package testeAnoPassado;

public class CadeiraRodas extends Cadeira implements Transporte{
	private int nRodas;
	private boolean elec;
	private TipoTransporte t;
	@Override
	public void setTipo(TipoTransporte t) {
		this.t = t;
		
	}
	@Override
	public TipoTransporte getTipo() {
		return t;
	}
	public CadeiraRodas(String desig, int id, testeAnoPassado.Mobiliario.TipoCadeira tipo, TipoCadeira tipoc,
			double altura, int nApoios, int nRodas, boolean elec) {
		super(desig, id, tipo, tipoc, altura, nApoios);
		this.nRodas = nRodas;
		this.elec = elec;
	}
	
	
}
