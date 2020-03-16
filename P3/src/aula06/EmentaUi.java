package aula06;

import java.util.ArrayList;
import java.util.Scanner;

import aula06.Ementa.DiaSemana;

public class EmentaUi {
	
	private static ArrayList<Alimento> alList = new ArrayList<Alimento>();
	private static ArrayList<Prato> pratoList = new ArrayList<Prato>();
	private static int selPretoPos = 0;
	static final Scanner sc = new Scanner(System.in);
	private static Ementa e;
	
	public static void main(String[] args) {
		boolean stop = false;
		System.out.println("Qual o nome da ementa, local?");
		String[] temp = sc.nextLine().split(", ");
		e = new Ementa(temp[0], temp[1]);
		while(stop == false) {
			System.out.println("Qual opcao pretende : \n1-Adicionar Ingrediente\n"
					+ "2-Pratos \n3-Ementa\n4-Store Ementa\n5-LoadEmenta");
			switch(Integer.parseInt(sc.nextLine())) {
				case 1:System.out.println("1-Adicionar Carne\n2-Adicionar Peixe\n3-Adicionar Cereal\n4-Adicionar Legume\n5-Menu Anterior");
					switch(Integer.parseInt(sc.nextLine())) {
						case 1:addCarne();
							break;
						case 2:addPeixe();
							break;
						case 3:addCereal();
							break;
						case 4:addLegume();
							break;
						case 5:break;
					}
					break;
				case 2:System.out.println("1-Criar Prato\n2-Apagar Prato\n3-Selecionar Prato\n4-Adicionar Ingrediente\n5-Remover Ingrediente\n6-Menu Anterior");
					switch(Integer.parseInt(sc.nextLine())) {
						case 1:addPrato();
							break;
						case 2:deletePrato();
							break;
						case 3:selectPrato();
							break;
						case 4:adicionarIng();
							break;
						case 5:removerIng();
							break;
						case 6:break;
					}
					break;
				case 3:
					System.out.println("1-Adicionar Prato\n2-Remover Prato\n3-Imprimir Ementa");
					switch(Integer.parseInt(sc.nextLine())) {
					case 1:addPratoToEmenta();
						break;
					case 2:removePratoToEmenta();
						break;
					case 3:System.out.println(e.toString());
						break;
				}
					break;
				case 4:
					break;
				case 5:
					break;
			}
			
		}
	}
	
	public static void addCarne() {
		System.out.println("Intoduza no seguinte formato: Tipo(vaca,porco,peru,frango,outro), Proteinas, Calorias, Peso");
		String[] temp = sc.nextLine().split(", ");
		alList.add(new Carne(Carne.VariedadeCarne.valueOf(temp[0]), Double.parseDouble(temp[1]), Double.parseDouble(temp[2]), Double.parseDouble(temp[3])));
	}
	
	public static void addPeixe(){
		System.out.println("Intoduza no seguinte formato: Tipo(congelado,fresco), Proteinas, Calorias, Peso");
		String[] temp = sc.nextLine().split(", ");
		alList.add(new Peixe(Peixe.TipoPeixe.valueOf(temp[0]), Double.parseDouble(temp[1]), Double.parseDouble(temp[2]), Double.parseDouble(temp[3])));
	}
	
	public static void addCereal(){
		System.out.println("Intoduza no seguinte formato: Nome, Proteinas, Calorias, Peso");
		String[] temp = sc.nextLine().split(", ");
		alList.add(new Cereal(temp[0],Double.parseDouble(temp[1]), Double.parseDouble(temp[2]), Double.parseDouble(temp[3])));
	}
	
	public static void addLegume(){
		System.out.println("Intoduza no seguinte formato: Nome, Proteinas, Calorias, Peso");
		String[] temp = sc.nextLine().split(", ");
		alList.add(new Legume(temp[0],Double.parseDouble(temp[1]), Double.parseDouble(temp[2]), Double.parseDouble(temp[3])));
	}
	
	public static void addPrato() {
		System.out.println("Prato normal, vegetariano ou dieta?");
		String op = sc.nextLine();
		System.out.println("Qual o nome do prato?");
		String nome = sc.nextLine();
		Prato p = null;
		if(op.equals("normal")) {
			p = new Prato(nome);
		}
		else if(op.equals("vegetariano")) {
			p = new PratoVegetariano(nome);
		}
		else if(op.equals("dieta")) {
			System.out.println("Qual o limite de calorias?");
			p = new PratoDieta(nome,Integer.parseInt(sc.nextLine()));
		}
		pratoList.add(p);
	}
	
	public static void selectPrato() {
		System.out.println("Qual o prato que prentende selecionar? (Indice)");
		int c = 0;
		for(Prato a : pratoList) {
			System.out.println("Indice: " + c + " - " + a.toString());
			c++;
		}
		selPretoPos = Integer.parseInt(sc.nextLine());
	}
	
	public static void deletePrato() {
		System.out.println("remover prato selecionado");
		pratoList.remove(selPretoPos);
	}
	
	public static void adicionarIng() {
		System.out.println("Quais os alimentos que pretende adicionar? (Indice) e pressione enter");
		System.out.println("Quando pretender parar a introducao escreva 'end' ");
		String inp;
		int c = 0;
		for(Alimento a : alList) {
			System.out.println("Indice: " + c + " - " + a.toString());
			c++;
		}
		do{
			inp = sc.nextLine();
			try {
				int indice = Integer.parseInt(inp);
				pratoList.get(selPretoPos).addIngrediente(alList.get(indice));
			}catch(Exception e) {}
		}while(!inp.equals("end"));
	}
	
	public static void removerIng() {
		System.out.println("Removendo ingrediente mais recente");
		pratoList.get(selPretoPos).removeIngrediente();
	}
	
	public static void addPratoToEmenta() {
		System.out.println("Qual o dia da semana que pretende adicionar para o prato selecionado? (segunda,terca,quarta,quinta,sexta,sabado,domingo)");
		DiaSemana s = DiaSemana.valueOf(sc.nextLine());
		e.addPrato(pratoList.get(selPretoPos), s);
		
	}
	
	public static void removePratoToEmenta() {
		System.out.println("Qual o dia da semana que pretende remover para o prato selecionado? (segunda,terca,quarta,quinta,sexta,sabado,domingo)");
		DiaSemana s = DiaSemana.valueOf(sc.nextLine());
		e.removePrato(pratoList.get(selPretoPos), s);
	}
	
	public static void storeTxt() {
		
	}
	
	public static void loadTxt() {
		
	}
	
}
