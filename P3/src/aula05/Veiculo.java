package aula05;

public abstract class Veiculo implements Comparable<Veiculo>{
	private int ano;
	private String cor;
	private int nRodas;
	
	public Veiculo(int ano, String cor, int nRodas) {
		this.ano = ano;
		this.cor = cor;
		this.nRodas = nRodas;
	}

	@Override
	public int compareTo(Veiculo v) {
		if(v == null) {
			throw new NullPointerException("Nulo");
		}
		if(this.ano > v.ano) {
			return 1;
		}
		else if(this.ano < v.ano) {
			return -1;
		}
		return 0;
	}

	@Override
	public String toString() {
		return "ano=" + ano + ", cor=" + cor + ", Numero de Rodas=" + nRodas;
	}
	
	
}
