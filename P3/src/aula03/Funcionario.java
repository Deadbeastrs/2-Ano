package aula03;

public class Funcionario extends Cliente{
	private int nFunc;
	private int nf;
	
	public Funcionario(int nSocio, Date dataInsc,int maxVid,String nome,int cc, Date d, int nFunc, int nf) {
		super(nSocio, dataInsc, maxVid, nome, cc, d);
		this.nFunc = nFunc;
		this.nf = nf;
	}
	
	public String toString() {
		return super.toString() + "\nNumero Funcionario:" + this.nFunc + "\nNumeroFiscal" + this.nf;
	}
}
