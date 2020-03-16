package testeAnoPassado;

import java.io.Serializable;

public abstract class Mobiliario implements Serializable{
	
	private static final long serialVersionUID = 2439757585184948205L;


	public enum TipoCadeira {
		Madeira,Plastico,Metal,Sintetico
	}

	private String desig;
	private int id;
	private TipoCadeira tipo;
	
	
	public Mobiliario(String desig, int id, TipoCadeira tipo) {
		this.desig = desig;
		this.id = id;
		this.tipo = tipo;
	}
	
}
