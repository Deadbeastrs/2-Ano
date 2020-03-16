package aula06;

import java.util.LinkedList;

public class PratoDieta extends Prato {
	
	private double totalCal;
	private double sumCal;
	private double sumPeso;
	private double sumProt;
	
	public PratoDieta(String nome, double limite) {
		super(nome);
		totalCal = limite;
		list = new LinkedList<Alimento>();
		sumCal = 0;
	}

	@Override
	public boolean addIngrediente(Alimento a) {
		sumCal += a.getCal();
		if(sumCal < totalCal) {
			sumPeso += a.getPeso();
			sumProt += a.getProt();
			list.add(a);
			return true;
		}
		sumCal -= a.getCal();
		System.out.println("Soma de alimentos exede o numero maximo de calorias");
		return false;
	}
	
	@Override
	public String toString() {
		return "Dieta(" + totalCal +  ")" + super.toString();
	}
	

}
