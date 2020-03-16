package aula02;

import java.util.Scanner;

public class Exe1 {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		Database d = new Database();
		boolean exit = true;
		Cliente c;
		Video v;
		int maxVid;
		System.out.println("Quota maxima de requesicoes de livros simultaneo por utilizador:");
		maxVid = Integer.parseInt(sc.nextLine());
		while(exit) {
			System.out.println("\nMenu:\nAdicionar utilizador -> 1\nRemover utilizador -> 2\nPesquisar Video / Verificar Disponibilidade -> 3\n"
					+ "Listar videos -> 4\nIntroducao de video -> 5\nRemover video -> 6"
					+ "\nRequesitar video -> 7\nDevolver Video -> 8\nUtilizadores de Video -> 9\nRating de video -> 10\nHistorico de videos para um cliente -> 11");
			int opcao = Integer.parseInt(sc.nextLine());
			switch(opcao) {
				case 1: System.out.println("E estudante? y/n");
						if(sc.nextLine().equals("y")) {
							System.out.println("indique a Data de inscricao:");
							Date da = new Date(sc.nextLine());
							System.out.println("Indique os seguinte parametros na forma :Nome:, numero cc:, Data nascimento dd/mm/aaaa:, Numero mec:, Curso:");
							String[] temp = sc.nextLine().split(", ");
							c = new Estudante((int) (Math.random() * 999999999),da,maxVid,temp[0], Integer.parseInt(temp[1]), new Date(temp[2]), Integer.parseInt(temp[3]), temp[4]);
							d.addClient(c);
						}else {
							System.out.println("indique a Data de inscricao:");
							Date da = new Date(sc.nextLine());
							System.out.println("Indique os seguinte parametros na forma :Nome:, numero cc:, Data nascimento dd/mm/aaaa:, Numero Funcionario: :, Numero Fiscal:");
							String[] temp = sc.nextLine().split(", ");
							c = new Funcionario((int) (Math.random() * 999999999),da,maxVid,temp[0], Integer.parseInt(temp[1]), new Date(temp[2]), Integer.parseInt(temp[3]), Integer.parseInt(temp[4]));
							d.addClient(c);
						}
						break;
						
				case 2:d.printClist();
						System.out.println("Qual utilizador pretende remover? (Indique a posicao)");
						d.removeClient(Integer.parseInt(sc.nextLine()));
						break;
						
				case 3:System.out.println("Indique o titulo ou id do video:");
						v = d.findVideo(sc.nextLine());
						if(v != null) {
							System.out.println(v.toString());
						}else {
							System.out.println("Não Existe");
						}
						
						break;
				case 4:d.printVlist();
						break;
					
				case 5:System.out.println("Insira os parametros da seggetMaxViduinte forma: titulo, categoria, idade limite");
						v = new Video(sc.nextLine());
						d.addVideo(v);
						break;
				
				case 6:d.printVlist();
						System.out.println("Qual video pretende remover? (Indique a posicao)");
						d.removeVideo(Integer.parseInt(sc.nextLine()));
						break;
						
				case 7:d.printVlist();
						System.out.println("Qual video pretende requesitar? (Titulo ou id)");
						v = null;
						try {
						v = d.findVideo(sc.nextLine());
						d.printClist();
						System.out.println("Qual utilizador requesita o video? (nome ou id)");
						String client = sc.nextLine();
						if(v.getState() && d.findClient(client) != null && d.findClient(client).getMaxVid() > 0 ) {
							v.changeState(false);
							d.addHist(new HistNode(v,d.findClient(client)));
							d.findClient(client).subVid();
							System.out.println("Requesitado com sucesso");
						}else {
							System.out.println("Não se encontra disponivel");
						}
						}catch(Exception e) {
						 System.out.println("Video não existe");
						}
						break;
				
				case 8:d.printVlist();
						System.out.println("Qual video pretende devolver? (Titulo ou id)");
						v = null;
						try {
							v = d.findVideo(sc.nextLine());
							if(v.getState()) {
								System.out.println("Livro já foi devolvido");
							}else {
								v.changeState(true);
								System.out.println("Livro devolvido com sucesso\nQual o rating que da ao video?");
								v.setrating(Integer.parseInt(sc.nextLine()));
							}
						}catch(Exception e) {
							System.out.println("Video não existe");
						}
						break;
						
				case 9:System.out.println("Qual o video? (nome ou id)");
						v = null;
						try {
							v = d.findVideo(sc.nextLine());
							System.out.println(d.getStringHist(v));
						}catch(Exception e) {
							System.out.println("Video não existe");
						}
						break;
						
				case 10:System.out.println("Qual o video que pretende ver o rating? (nome ou id)");
						v = null;
						try {
							v = d.findVideo(sc.nextLine());
							System.out.println(v.getRating());
						}catch(Exception e) {
							System.out.println("Video não existe");
						}
						break;  
				case 11:System.out.println("Qual o nome do cliente? (nome ou id)");
						try{
							 System.out.println(d.findClientHist(d.findClient(sc.nextLine())));
						}catch(Exception e) {
							System.out.println("erro");
						}
			}
		}
		sc.close();
	}
}
