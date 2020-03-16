package aula06;

import java.util.Comparator;
import java.util.SortedMap;
import java.util.TreeMap;
import java.util.Random; 

public class Ementa {
	
	enum DiaSemana{segunda,terca,quarta,quinta,sexta,sabado,domingo;
		
	public static DiaSemana rand() {
		Random rand = new Random();
		int r = rand.nextInt(7);
		for(DiaSemana temp: DiaSemana.values()) {
			if(temp.ordinal() == r) {
				return temp;
			}
		}
		
		return null;
	}};
	
	private String nome;
	private String local;
	
	SortedMap<DiaSemana, Prato> list = new TreeMap<>(new Comparator<DiaSemana>() {
		@Override
		public int compare(DiaSemana arg0, DiaSemana arg1) {
			if(arg0.ordinal() < arg1.ordinal()) {
				return -1;
			}
			else if(arg0.ordinal() > arg1.ordinal()) {
				return 1;
			}
			return 0;
		}
    });
			
	public Ementa(String nome, String local) {
		this.nome = nome;
		this.local = local;
	}
	
	public void addPrato(Prato p, DiaSemana d) {
		list.put(d,p);
	}
	
	public void removePrato(Prato p, DiaSemana d) {
		list.remove(d,p);
	}
	
	@Override
	public String toString() {
		return list.toString();
	}
}
