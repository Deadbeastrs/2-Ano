package aula13;

public class Localidade extends Regiao{
	private TipoLocalidade tipo;
	
	public Localidade(String nome, int populacao, TipoLocalidade tipo) {
		super(nome,populacao);
		this.tipo = tipo;
	}
	
	public TipoLocalidade getTipo() {
		return tipo;
	}

	public void setTipo(TipoLocalidade tipo) {
		this.tipo = tipo;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (!super.equals(obj))
			return false;
		if (getClass() != obj.getClass())
			return false;
		Localidade other = (Localidade) obj;
		if (tipo != other.tipo)
			return false;
		if(!super.equals((Regiao) obj)) {
			return false;
		}
		return true;
	}
	
}
