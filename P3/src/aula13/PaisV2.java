package aula13;

import java.util.ArrayList;

public class PaisV2{
	 private String nome;
	 private LocalidadeV2<Cidade> capital;
	 private ArrayList<RegiaoV2> regioes;
	 
	 public PaisV2(String nome) {
		 this.nome = nome;
		 regioes = new ArrayList<>();
	 }
	 
	 public PaisV2(String nome, LocalidadeV2<Cidade> capital) {
		 this.nome = nome;
	     this.capital = capital;
		
		 regioes = new ArrayList<>();
	 }
	 
	 public void addRegiao(RegiaoV2 reg) {
		 regioes.add(reg);
	 }
	 
	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public LocalidadeV2<Cidade> getCapital() {
		return capital;
	}

	public void setCapital(LocalidadeV2<Cidade> capital) {
		this.capital = capital;
	}
	
	public int getPopulacao() {
		int pop = 0;
		for(RegiaoV2 r : regioes) {
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
		PaisV2 other = (PaisV2) obj;
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
