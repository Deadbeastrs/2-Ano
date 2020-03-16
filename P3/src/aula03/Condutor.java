package aula03;

import java.util.ArrayList;

public class Condutor extends Person {
	private ArrayList<String> lCarta = new ArrayList<String>();
	
	public Condutor(String nome, int cc, Date nascDate) {
		super(nome, cc, nascDate);		
	}
	
	public void addTcarta(String tCarta) {
		if(!lCarta.contains(tCarta)) {
			lCarta.add(tCarta);
		}else {
			System.out.println("Ja conduz essa carta");
		}
	}
	
	public void removeTcarta(String tCarta) {
		if(lCarta.contains(tCarta)) {
			lCarta.remove(tCarta);
		}else {
			System.out.println("Nao tem essa carta nao pode ser removida");
		}
	}
	
	public boolean podeConduzir(String tCarta) {
		if(lCarta.contains(tCarta)) {
			return true;
		}else {
			return false;
		}
	}
}
	