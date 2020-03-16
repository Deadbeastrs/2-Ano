package aula04;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

public class Estudante extends Person {
	
	static int lastnMec = 100;
	int nMec;
	Date dI;
	
	public Estudante(String nome,int cc, Date d, Date dI) {
		super(nome,cc,d);
		this.nMec = lastnMec++;
		this.dI = dI;
	}
	
	public Estudante(String nome,int cc, Date d) {
		super(nome,cc,d);
		DateTimeFormatter dtf = DateTimeFormatter.ofPattern("dd/MM/yyyy");
		LocalDate localDate = LocalDate.now();
		this.dI = new Date(dtf.format(localDate));
		this.nMec = lastnMec++;
	}
	
	public int nMec() {
		return this.nMec;
	}
	
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return super.toString() + " nMec: " + nMec + " Data Inscricao: " + dI.toString();
	}
}
