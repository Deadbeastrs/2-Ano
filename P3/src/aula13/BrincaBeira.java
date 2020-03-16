package aula13;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.Random;

public class BrincaBeira {
	private ArrayList<String> users = new ArrayList<>();
	private Hashtable<String,String> userToy = new Hashtable<>();
	private Hashtable<String,String> nameToToy;
	private Hashtable<String,Integer> popularNames = new Hashtable<>();
	private String[] brinquedos = {"Escorrega","Legos","Sam a Toupeira Saltitona","Cao Detetive","Fruta Musical","Toy"};
	private Hashtable<String,Integer> ingresso = new Hashtable<>();
	private int c1 = 0;
	
	public void addFunc(String nome) {
		users.add(nome);
	}
	
	public void removeFunc(String nome) {
		users.remove(nome);
	}
	
	public void genBrinquedo() {
		Random r = new Random();
		int temp = r.nextInt(users.size());
		String user = users.get(temp);
		String toy = brinquedos[r.nextInt(brinquedos.length)];
		userToy.put(user,toy);
		System.out.println("Funcionario: " + user + " ganhou: " + toy);
	}
	
	public void nomeToToy() {
		Random r = new Random();
		nameToToy = new Hashtable<>();
		for(int i=0;i<users.size();i++) {
			nameToToy.put(users.get(i),brinquedos[r.nextInt(brinquedos.length)]);
		}
		System.out.println(nameToToy);
	}
	
	public void getPopularNames() {
		for(String user : users) {
			popularNames.put(user,Collections.frequency(users, user));
		}
		System.out.println(popularNames);
	}
	
	public void trocarIngressos() {
		int c = 0;
		ingresso = new Hashtable<>();
		Iterator<String> i=users.iterator();
		while(i.hasNext()){
			if(c == c1) {
				ingresso.put(i.next(), 1);
			}
			ingresso.put(i.next(), 0);
			c++;
		}
		c1++;
		if(c1 == users.size() - 1) {
			c1 = 0;
			System.out.println("here");
		}
		System.out.println(ingresso);
	}
	
	
}
