package aula11;

import java.util.ArrayList;
import java.util.List;

public class Exe2 {
	public static void main(String[] args) {
		Figura f0 = new Retangulo(3,4);
		Figura f1 = new Quadrado(3);
		List<Figura> figs = new ArrayList<>();
		figs.add(f0);
		figs.add(f1);
		System.out.println(maiorFiguraJ7(figs));
		System.out.println(maiorFiguraJ7b(figs));
		System.out.println(areaTotalJ8(figs));
		System.out.println(areaTotalJ8(figs,"Retangulo"));
	}
	private static Figura maiorFiguraJ7(List<Figura> figs) {
		return figs.stream().max((a,b)->a.compareTo(b)).get();
	}
	private static Figura maiorFiguraJ7b(List<Figura> figs) {
		return figs.stream().max((a,b)->{
			if(a.perimetro() > b.perimetro()) {
				return 1;
			}
			else if(a.perimetro() < b.perimetro()) {
				return -1;
			}
			else {
				return 0;
			}
		}).get();
	}
	private static double areaTotalJ8(List<Figura> figs) {
		return figs.stream().mapToDouble( a -> a.area()).sum();
	}
	private static double areaTotalJ8(List<Figura> figs,String subtipoNome){
		return figs.stream().filter(a -> a.getClass().getSimpleName().equals(subtipoNome)).mapToDouble( a -> a.area()).sum();
	}
	
}
