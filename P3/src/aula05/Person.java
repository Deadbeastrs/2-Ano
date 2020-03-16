package aula05;

public class Person {
	private String name;
	private int cc;
	private Date nascDate;
	
	public Person(String nome,int cc, Date d) {
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
	
	public String nascDate() {
		return this.nascDate.toString();
	}
	
	public String toString() {
		return this.name + " " + this.cc + " " + this.nascDate.toString();
	}
}
