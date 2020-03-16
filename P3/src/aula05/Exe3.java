package aula05;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Scanner;
public class Exe3 {
	public static void main(String[] args) throws IOException {
		Database d = new Database();
		Scanner sc = new Scanner(System.in);
		boolean exit = false;
		int option;
		while(exit == false) {
			System.out.println("Qual opcao pretende:");
			System.out.println("Adicionar pessoa -> 1\nListar pessoa -> 2\nRemover pessoa -> 3\nOrdenar por Nome -> 4\nOrdenar por CC -> 5\nLeitura de Ficheiro -> 6\nEscrita de Ficheiro -> 7");
			option = Integer.parseInt(sc.nextLine());
			if(option == 1) {
				System.out.println("Introduza nome:");
				String nome = sc.nextLine();
				System.out.println("Introduza cc:");
				int cc = Integer.parseInt(sc.nextLine());
				System.out.println("Introduza data no formato: dd/mm/aaaa");
				String c = sc.nextLine();
				if(Date.checkDate(c)) {
					Date nascDate = new Date(c);
					Person p = new Person(nome,cc,nascDate);
					d.addDb(p);
					System.out.println("Adicionado com Sucesso");
				}else {
					System.out.println("Erro volte a tentar");
				}
			}
			if(option == 2) {
				System.out.println(d.toStringDb());
			}
			if(option == 3) {
				System.out.println("Qual posição pretende remover ?");
				System.out.println(d.toStringDb());
				try {
					int p = sc.nextInt();
					d.removeDb(p);
					System.out.println("Removido com sucesso");
				}
				catch(Exception e) {
					System.out.println("Erro");
				}
			}
			if(option == 4) {
				System.out.println(d.byNome());
			}
			if(option == 5) {
				System.out.println(d.byCC());
			}
			if(option == 6) {
				System.out.println("Qual o nome do ficheiro?");
				String ls = sc.nextLine();
				try {
				File f = new File(ls);
				Operacao[] o = {new Nokia(), new VCard(), new CSV()};
				for(Operacao op : o) {
					d.loadFile(op, f);
				}
				}catch(FileNotFoundException e) {
					System.out.println("ficheiro nao existe");
				}
			}
			if(option == 7) {
				System.out.println("Qual o nome do ficheiro?");
				String ls = sc.nextLine();
				System.out.println("Qual o formato? (Nokia, CSV, VCard)");
				String format = sc.nextLine();
				File f = new File(ls);
				Operacao[] o = {new Nokia(), new VCard(), new CSV()};
				for(Operacao op : o) {
					if(op.getClass().getSimpleName().equals(format))
					d.saveFile(op, f);
				}
			}
		}
		sc.close();
	}
}
