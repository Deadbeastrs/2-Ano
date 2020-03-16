package aula13;

import java.util.ArrayList;

public class Pais{
	 private String nome;
	 private Localidade capital;
	 private ArrayList<Regiao> regioes;
	 
	 public Pais(String nome) {
		 this.nome = nome;
		 regioes = new ArrayList<>();
	 }
	 
	 public Pais(String nome, Localidade capital) {
		 this.nome = nome;
		 if(capital.getTipo().equals(TipoLocalidade.Cidade)) {
			 this.capital = capital;
		 }else {
			 throw new IllegalArgumentException("Capital Inválida");
		 }
		 regioes = new ArrayList<>();
	 }
	 
	 public void addRegiao(Regiao reg) {
		 regioes.add(reg);
	 }
	 
	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public Localidade getCapital() {
		return capital;
	}

	public void setCapital(Localidade capital) {
		this.capital = capital;
	}
	
	public int getPopulacao() {
		int pop = 0;
		for(Regiao r : regioes) {
			pop += r.getPopulacao();
		}
		return pop;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((capital == null) ? 0 : capital.hashCode());
		result = prime * result + ((nome == null) ? 0 : nome.hashCode());
		result = prime * result + ((regioes == null) ? 0 : regioes.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Pais other = (Pais) obj;
		if (capital == null) {
			if (other.capital != null)
				return false;
		} else if (!capital.equals(other.capital))
			return false;
		if (nome == null) {
			if (other.nome != null)
				return false;
		} else if (!nome.equals(other.nome))
			return false;
		if (regioes == null) {
			if (other.regioes != null)
				return false;
		} else if (!regioes.equals(other.regioes))
			return false;
		return true;
	}
	
	@Override
	public String toString() {
		if(capital == null) {
			return "País: " + nome + ", Populaçao: " + getPopulacao() + "(*Indefenida*)";
		}else {
			return "País: " + nome + ", Populaçao: " + getPopulacao() + "(" + capital + ")";
		}
		
	}
	 
}
