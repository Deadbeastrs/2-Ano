package aula07;

public class Hora {
	private int hora;
	private int min;
	
	public Hora(String hora) {
		String[] temp = hora.split(":");
		this.hora = Integer.parseInt(temp[0]);
		this.min = Integer.parseInt(temp[1]);
	}
	
	public int getMin() {
		return this.min;
	}
	
	public int getHora() {
		return this.hora;
	}
	
	public Hora addHoras(Hora a) {
		int temph = a.getHora() + this.hora;
		int numMin = (a.getMin() + this.min);
		if(numMin > 60) {
			temph = temph + (numMin / 60);
			numMin = numMin - 60;
		}
		else if(numMin == 60) {
			temph = temph + 1;
			numMin = numMin - 60;
		}
		Hora h = new Hora(temph + ":" + numMin);
		return h;
	}

	@Override
	public String toString() {
		return hora + ":" + min;
	}
	
	
}
