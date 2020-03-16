package aula13;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public class Exe1V2 {
	public static void main(String[] args) {
		LocalidadeV2<Cidade> cid1 = new LocalidadeV2<>("Szohod", 31212);
		LocalidadeV2<Cidade> cid2 = new LocalidadeV2<>("Wadesdah", 23423);
		LocalidadeV2<Vila> cid3 = new LocalidadeV2<>("BedRock", 23423);
		EstadoV2 est1 = new EstadoV2("North Borduria", 223133, cid1);
		EstadoV2 est2 = new EstadoV2("South Borduria", 84321, cid2);
		PaisV2 p1 = new PaisV2("Borduria", est1.getCapital());
		PaisV2 p2 = new PaisV2("Khemed", cid2);
		//PaisV2 p2 = new PaisV2("Khemed", cid3);
		PaisV2 p3 = new PaisV2("Aurelia");
		PaisV2 p4 = new PaisV2("Atlantis");
		p1.addRegiao(est1);
		p1.addRegiao(est2);
		p2.addRegiao(new ProvinciaV2("Afrinia", 232475, "Aluko Pono"));
		p2.addRegiao(new ProvinciaV2("Eriador", 100000, "Dumpgase Liru"));
		p2.addRegiao(new ProvinciaV2("Laurania", 30000, "Mukabamba Dabba"));
		List<PaisV2> org = new ArrayList<PaisV2>();
		org.add(p1);
		org.add(p2);
		org.add(p3);
		org.add(p4);
		System.out.println("----Iterar sobre o conjunto");
		Iterator<PaisV2> itr = org.iterator();
		while (itr.hasNext())
		System.out.println(itr.next());
		System.out.println("-------Iterar sobre o conjunto - For each (java 8)");
		for (PaisV2 pais: org) {
			System.out.println(pais);
		}
		org.remove(p2);
		Collections.sort(org,(PaisV2 a,PaisV2 b) -> a.getNome().compareTo(b.getNome()));
		System.out.println("------Sorted and removed p2:");
		for (PaisV2 pais: org) {
			System.out.println(pais);
		}
		
		}
}
