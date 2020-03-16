package aula10;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

public class Data {
	private int day;
	private int month;
	private int year;
	
	public Data(String wdate) {
		String[] sepDate = wdate.split("/");
		this.day = Integer.valueOf(sepDate[0]);
		this.month = Integer.valueOf(sepDate[1]);
		this.year = Integer.valueOf(sepDate[2]);
	}
	
	public Data(int day, int month, int year) {
		this.day = day;
		this.month = month;
		this.year = year;
	}
	
	public static boolean checkDate(String d) {
		String[] sepDate = d.split("/");
		if(sepDate.length != 3) {
			System.out.println("Introduza Data no formato Correto");
		}
		else {
			int[] daysInfo = {31,28,31,30,31,30,31,31,30,31,30,31};
			try {
				if(0 < Integer.valueOf(sepDate[0]) && Integer.valueOf(sepDate[0]) <= daysInfo[Integer.valueOf(sepDate[1]) - 1] && Integer.valueOf(sepDate[1]) > 0 && Integer.valueOf(sepDate[1]) < 12 && Integer.valueOf(sepDate[2]) > 0) {
					return true;
				}else {
					return false;
				}
			}
			catch(NumberFormatException e) {
				System.out.println("Introduza uma data valida");
				
			}
		}
		return false;
	}
	
	public String toString(){
		return this.day + "/" + this.month + "/" + this.year;
	}
	
	public static Data today(){
		LocalDate date = LocalDate.now();
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd/MM/yyyy");
		return new Data(date.format(formatter));
	}
	
}

