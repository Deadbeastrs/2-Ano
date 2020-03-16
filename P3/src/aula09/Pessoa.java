package aula09;

public class Pessoa {
	private String name;
	private int cc;
	private Date nascDate;
	
	public Pessoa(String nome,int cc, Date d) {
		this.name = nome;
		this.cc = cc;
		this.nascDate = d;
	}
	
	public String name() {
		return this.name;
	}
	
	public int cc() {
		return this.cc;
	}
	
	public String toString() {
		return this.name + " " + this.cc + " " + this.nascDate.toString();
	}
}