package aula06;

import java.util.LinkedList;

public class PratoVegetariano extends Prato{
	
	private double sumCal;
	private double sumPeso;
	private double sumProt;
	
	public PratoVegetariano(String nome) {
		super(nome);
	}
	
	@Override
	public boolean addIngrediente(Alimento a) {
		if(a instanceof Vegetariano) {
			sumCal += a.getCal();
			sumPeso += a.getPeso();
			sumProt += a.getProt();
			list.add(a);
			return true;
		}
		System.out.println("Alimento nao foi adicionado pois nao e vegetariano");
		return false;
	}

	@Override
	public String toString() {
		return "Vegetariano " + super.toString();
	}

}
