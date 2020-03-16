package aula09;

public class GeladoSimples implements Gelado{
	
	private String tipo;
	
	public GeladoSimples(String s) {
		this.tipo = s;
	}

	@Override
	public void base(int n) {
		System.out.print("\n"+n + " bolas de gelado de " + tipo);
	}
	
}
