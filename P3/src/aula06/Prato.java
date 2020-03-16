package aula06;

import java.util.LinkedList;

public class Prato implements Comparable{
	
	private String nome;
	protected LinkedList<Alimento> list;
	private double sumCal;
	private double sumPeso;
	private double sumProt;
	
	public Prato(String nome) {
		this.nome = nome;
		list = new LinkedList<Alimento>();
		sumCal = 0;
		sumPeso = 0;
		sumProt = 0;;
	}
	
	public boolean addIngrediente(Alimento a) {
		if(a != null){
			sumCal += a.getCal();
			sumPeso += a.getPeso();
			sumProt += a.getProt();
			list.add(a);
			return true;
		}
		return false;
	}
	
	public void removeIngrediente() {
		list.remove();
	}

	@Override
	public String toString() {
		return " Prato '" + nome + "' composto por " + list.size() + " Ingredientes";
	}
	
	@Override
	public boolean equals(Object obj) {
		if(this == obj)
			return true;
		if(obj == null)
			return false;
		if(obj.getClass() != this.getClass())
			return false;
		Prato temp = (Prato) obj;
		if(temp.nome == this.nome && this.list.equals(temp.list)) {
			return true;
		}
		
		return false;
	}
	
	@Override
	public int hashCode() {
		return super.hashCode();
	}
	
	@Override
	public int compareTo(Object arg0) {
		
		return 0;
	}
	
}
