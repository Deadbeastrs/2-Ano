package aula04;

import java.util.ArrayList;

public class ColecaoFiguras {
	private double maxArea;
	private double areaTotal;
	private ArrayList<Figura> list = new ArrayList<Figura>();
	
	public ColecaoFiguras(double maxArea) {
		this.maxArea = maxArea;
	}
	
	public boolean addFigura(Figura f) {
		if(!list.contains(f) && (f.area() + areaTotal) <= maxArea) {
			areaTotal += f.area();
			list.add(f);
			return true;
		}
		return false;
	}
	
	public boolean delFigura(Figura f) {
		if(list.contains(f)) {
			list.remove(f);
			areaTotal -= f.area();
			return true;
		}
		return false;
	}
	
	public double areaTotal() {
		return this.areaTotal;
	}
	
	public boolean exists(Figura f) {
		if(list.contains(f)) {
			return true;
		}
		return false;
	}

	@Override
	public String toString() {
		return "Area total:" + areaTotal + ", Area Maxima:" + areaTotal;
	}
	
	public Figura[] getFiguras() {
		Figura[] temp = new Figura[list.size()];
		list.toArray(temp);
		return temp;
	}
	
	public Ponto[] getCentros() {
		Ponto[] temp = new Ponto[list.size()];
		int c = 0;
		for(Figura f : list) {
			temp[c] = f.getC();
			c++;
		}
		return temp;
	}
	
	
}
