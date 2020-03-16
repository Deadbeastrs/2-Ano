package aula08;

public class JogoDoGalo {
	public static void main(String[] args) {
		LogicaGalo lg = new LogicaGalo("X");
		if(args.length != 1) {
			System.out.println("Utilizacao:\"java JogoDoGalo O\" ou \"java\n" + 
					"JogoDoGalo X\" ");
		}
		else {
			if(args[0].equals("X") || args[0].equals("O") ) {
				
			}
		}
	}
}
