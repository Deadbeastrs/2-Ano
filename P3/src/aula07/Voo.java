package aula07;

public class Voo {
	private Hora hora;
	private String voo;
	private String companhia;
	private String origem;
	private Hora atraso;
	
	public Voo(Hora hora, String voo, String companhia, String origem, Hora atraso) {
		this.hora = hora;
		this.voo = voo;
		this.companhia = companhia;
		this.origem = origem;
		this.atraso = atraso;
	}
	

	public String getCompanhia() {
		return companhia;
	}



	public Hora getAtraso() {
		return atraso;
	}



	@Override
	public String toString() {
		return hora + "\t" + voo + "\t" + companhia + "\t" + origem + "\t"
				+ atraso + "\n";
	}
	
}
