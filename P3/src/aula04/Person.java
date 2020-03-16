package aula04;

public class Person {
	private String name;
	private int cc;
	private Date nascDate;
	
	public Person(String nome,int cc, Date d) {
		this.name = nome;
		this.cc = cc;
		this.nascDate = d;
	}
	
	public String nome() {
		return this.name;
	}
	
	@Override
	public String toString() {
		return this.name + " BI: " + this.cc + " Data: " + this.nascDate.toString();
	}
}
