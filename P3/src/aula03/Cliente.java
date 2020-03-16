package aula03;

public class Cliente {
	private int nSocio;
	private Date dataInsc;
	private int maxVid;
	private String name;
	private int cc;
	private Date nascDate;
	
	public Cliente(int nSocio, Date dataInsc,int maxVid, String nome,int cc, Date d) {
		this.name = nome;
		this.cc = cc;
		this.nascDate = d;
		this.nSocio = nSocio;
		this.dataInsc = dataInsc;
		this.maxVid = maxVid;
	}
	
	public int getId() {
		return this.nSocio;
	}
	
	public void subVid() {
		this.maxVid = this.maxVid - 1;
	}
	
	public String getName() {
		return this.name;
	}
	
	public int getMaxVid() {
		return this.maxVid;
	}
	
	public String toString() {
		return " Nome: " + this.name + "\nCC:" + this.cc + "\nData Nascimento:" + this.nascDate.toString() + "\nNumero de sócio=" + nSocio + ",\nData de Inscricao=" + dataInsc.toString();
	}
}
