package aula02;

public class Estudante extends Cliente {
	private int nMec;
	private String curso;
	
	public Estudante(int nSocio, Date dataInsc,int maxVid, String nome,int cc, Date d, int mec, String curso) {
		super(nSocio, dataInsc, maxVid, nome, cc, d);
		this.nMec = mec;
		this.curso = curso;
	}
	
	public String toString() {
		return super.toString() + "\nNumero mec:" + this.nMec + "\nCurso:" + this.curso;
	}
}