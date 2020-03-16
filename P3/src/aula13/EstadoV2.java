package aula13;

public class EstadoV2 extends RegiaoV2{
	private LocalidadeV2<Cidade> capital;
	
	public EstadoV2(String nome, int populacao, LocalidadeV2<Cidade> capital) {
		super(nome, populacao);
		this.capital = capital;
	}
	

	public LocalidadeV2<Cidade> getCapital() {
		return capital;
	}


	public void setCapital(LocalidadeV2<Cidade> capital) {
		this.capital = capital;
	}


	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (!super.equals(obj))
			return false;
		if (getClass() != obj.getClass())
			return false;
		EstadoV2 other = (EstadoV2) obj;
		if(!capital.equals(other.capital)) {
			return false;
		}
		if(!super.equals((RegiaoV2) obj)) {
			return false;
		}
		return true;
	}
	
	@Override
	public String toString() {
		return super.toString() + "Capital: " + capital.toString();
	}
	
}
