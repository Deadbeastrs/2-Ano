package testeAnoPassado;

public class Cadeira extends Mobiliario{
	
	public enum TipoCadeira{
		Escritorio,Espera,Atendimento
	}
	
	private int nApoios;
	private double altura;
	private TipoCadeira tipoc;
	
	public Cadeira(String desig, int id, Mobiliario.TipoCadeira tipo, TipoCadeira tipoc, double altura,int nApoios) {
		super(desig, id, tipo);
		this.nApoios = nApoios;
		this.altura = altura;
		this.tipoc = tipoc;
	}
	
	
}
