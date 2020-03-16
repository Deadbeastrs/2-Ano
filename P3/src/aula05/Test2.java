package aula05;

public class Test2 {
	
	public static void main(String[] args) {
		Veiculo b = new Bicicleta(2019,"red",2);
		Veiculo m = new Moto(2000,"blue",4,"00-12-AW",1500,180);
		Veiculo a = new Automovel(2010,"green",4,"03-E2-AP",2500,270);
		Veiculo pb = new BicicletaPolicia(1989,"red",3,1234,"GNR");
		Veiculo pa = new CarroPolicia(1989,"red",4,"00-23-DS", 1234,100, 1000, 90, 424, "Diesel", "GNR");
		Veiculo pm = new MotoPolicia(1900,"blue",2,"05-2S-PS", 1234,100, 1000, 90, 424, "Diesel", "GNR");
		Veiculo[] l = {b,m,a,pb,pa,pm};
		l = UtilCompare.sortArray(l);
		for(Veiculo v : l) {
			System.out.println(v);
		}
	}
	
}
