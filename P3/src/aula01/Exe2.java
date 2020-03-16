package aula01;
import java.util.Scanner;
public class Exe2 {
	public static void main(String[] args) {
		Database d = new Database();
		Scanner sc = new Scanner(System.in);
		boolean exit = false;
		int option;
		
		while(exit == false) {
			System.out.println("Qual opcao pretende:");
			System.out.println("Adicionar pessoa -> 1\nListar pessoa -> 2\nRemover pessoa -> 3\nOrdenar por Nome -> 4\nOrdenar por CC -> 5");
			option = sc.nextInt();
			if(option == 1) {
				System.out.println("Introduza nome:");
				String nome = sc.next();
				System.out.println("Introduza cc:");
				int cc = sc.nextInt();
				System.out.println("Introduza data no formato: dd/mm/aaaa");
				String c = sc.next();
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
		}
		sc.close();
	}
}