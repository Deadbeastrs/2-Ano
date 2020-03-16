package aula12;

import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Parameter;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Scanner;

import aula10.Pessoa;

public class Exe1 {
	private static Scanner sc = new Scanner(System.in);
	private static ArrayList<Pessoa> list = new ArrayList<>();	
	public static void main(String[] args) throws ClassNotFoundException, InstantiationException, IllegalAccessException, IllegalArgumentException, InvocationTargetException, SecurityException {
		Class<?> cl1 = Class.forName("aula10.Pessoa");
		dumpClass(cl1);
		int option = -1;
		while(option != 0) {
			System.out.println("Opcoes:");
			System.out.println("1 -> Criar novo objeto");
			System.out.println("2 -> invocar todos metodos ToString");
			option = sc.nextInt();
			sc.hasNextLine();
			if(option == 1) {
				list.add((Pessoa)getContr(cl1));
				System.out.println("Classe criada com sucesso");
			}
			if(option == 2) {
				for(Pessoa p : list) {
					System.out.println(p.toString());
				}
			}
		}
	}
	
	public static void dumpClass(Class<?> cl) {
		System.out.println("Nome da classe: " + cl.getSimpleName()+":\n");
		System.out.println("Atributos:");
		for(Field f : cl.getDeclaredFields()) {
			System.out.println(f);
		}
		System.out.println();
		System.out.println("Construtores:");
		for(Constructor<?> c : cl.getConstructors()) {
			System.out.println(c);
		}
		System.out.println();
		System.out.println("Metodos:");
		for(Method d : cl.getMethods()) {
			System.out.println(d);
		}
		System.out.println();
		System.out.println("Interfaces:");
		for(Class<?> i : cl.getInterfaces()) {
			System.out.println(i.getCanonicalName());
		}
		System.out.println();
		System.out.println("Super class:");
		System.out.println(cl.getSuperclass().getCanonicalName());
	}
	
	public static Object getContr(Class<?> cl) throws InstantiationException, IllegalAccessException, IllegalArgumentException, InvocationTargetException {
		Constructor<?>[] co = cl.getConstructors();
		System.out.println("\nConstrutores da classe "+cl.getSimpleName()+":\n");
		int cc=0;
		for(Constructor<?> c : co) {
			System.out.println(cc + "->" + c);
			cc++;
		}
		System.out.println("Qual pretende utilizar?");
		int val = sc.nextInt();
		sc.nextLine();
		Class<?>[] param = co[val].getParameterTypes();
		Object[] temp = new Object[param.length];
		int c = 0;
		for(Class<?> par : param) {
			if(!par.isPrimitive() && !par.getSimpleName().equals("String")) {
				temp[c] = getContr(par);
			}else {
				System.out.println("Argumento ->" + par.getSimpleName());
				temp[c] = toPrimitive(sc.nextLine(),par.getSimpleName());
			}
			c++;
		}
		return co[val].newInstance(temp);
	}
	
	private static Object toPrimitive(String val, String type) {
		if(type.equals("double")) {
			return Double.parseDouble(val);
		}
		else if(type.equals("int")) {
			return Integer.parseInt(val);
		}
		else if(type.equals("String")) {
			return val;
		}
		return null;
	}
	
	
}
