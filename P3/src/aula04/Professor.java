package aula04;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

public class Professor extends Person {
	private int nFunc;
	private static int n = 0;
	private Date dAdd;
	
	public Professor(String nome, int cc, Date d, int nFunc, Date dAdd) {
		super(nome, cc, d);
		this.nFunc = nFunc;
	}
	
	public Professor(String nome, int cc, Date dNasc) {
		super(nome, cc, dNasc);
		this.nFunc = n + 1;
		DateTimeFormatter dtf = DateTimeFormatter.ofPattern("dd/MM/yyyy");
		LocalDate localDate = LocalDate.now();
		this.dAdd = new Date(dtf.format(localDate));
	}
	
	@Override
	public String toString() {
		return super.toString() + " Numero de funcionario: " + nFunc + " Data Admissao: " + dAdd.toString();
	}
}
