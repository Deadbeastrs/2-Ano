package aula13;

public class ProvinciaV2 extends RegiaoV2 {
	private String governador;
	
	public ProvinciaV2(String nome, int populacao, String governador) {
		super(nome, populacao);
		this.governador = governador;
	}
	
	public String getGovernador() {
		return governador;
	}

	public void setGovernador(String governador) {
		this.governador = governador;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = super.hashCode();
		result = prime * result + ((governador == null) ? 0 : governador.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (!super.equals(obj))
			return false;
		if (getClass() != obj.getClass())
			return false;
		ProvinciaV2 other = (ProvinciaV2) obj;
		if(!super.equals((RegiaoV2) other)) {
			return false;
		}
		if (governador == null) {
			if (other.governador != null)
				return false;
		} else if (!governador.equals(other.governador))
			return false;
		return true;
	}
	
	@Override
	public String toString() {
		return super.toString() + "governador: " + governador;
	}
	
}
