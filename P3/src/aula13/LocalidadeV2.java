package aula13;

public class LocalidadeV2<T> extends RegiaoV2{
	
	public LocalidadeV2(String nome, int populacao) {
		super(nome,populacao);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (!super.equals(obj))
			return false;
		if (getClass() != obj.getClass())
			return false;
		if(!super.equals((RegiaoV2) obj)) {
			return false;
		}
		return true;
	}
	
}
