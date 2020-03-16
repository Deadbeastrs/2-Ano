package aula13;

public class Estado extends Regiao{
	private Localidade capital;
	
	public Estado(String nome, int populacao, Localidade capital) {
		super(nome, populacao);
		this.capital = capital;
	}
	

	public Localidade getCapital() {
		return capital;
	}


	public void setCapital(Localidade capital) {
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
		Estado other = (Estado) obj;
		if(!capital.equals(other.capital)) {
			return false;
		}
		if(!super.equals((Regiao) obj)) {
			return false;
		}
		return true;
	}
	
	@Override
	public String toString() {
		return super.toString() + "Capital: " + capital.toString();
	}
	
}
