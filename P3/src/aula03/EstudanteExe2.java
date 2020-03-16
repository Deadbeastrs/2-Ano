package aula03;

public class EstudanteExe2 extends Cliente {
	private int nMec;
	private String curso;
	
	public EstudanteExe2(int nSocio, Date dataInsc,int maxVid, String nome,int cc, Date d, int mec, String curso) {
		super(nSocio, dataInsc, maxVid, nome, cc, d);
		this.nMec = mec;
		this.curso = curso;
	}
	
	public String toString() {
		return super.toString() + "\nNumero mec:" + this.nMec + "\nCurso:" + this.curso;
	}
}