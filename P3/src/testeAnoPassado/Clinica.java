package testeAnoPassado;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class Clinica implements Serializable{

	private static final long serialVersionUID = -2389715117509806413L;
	private String nome;
	private ListaGeneric<Mobiliario>  lista;
	
	public Clinica(String nome) {
		lista = new ListaGeneric<>();
		this.nome = nome;
	}
	
	public boolean addMobiliario(Mobiliario m) {
		if(!lista.contains(m)) {
			lista.addElem(m);
			return true;
		}else {
			return false;
		}
	}
	
	public boolean removeMobiliario(Mobiliario m) {
		return lista.removeElem(m);
	}
	
	public List<Transporte> listTransportes(){
		List<Transporte> temp = new ArrayList<>();
		List<Mobiliario> listTemp = lista.toList();
		for(Mobiliario m : listTemp) {
			if(m instanceof Transporte) {
				temp.add((Transporte) m);
			}
		}
		return temp;
	}
	
	public Iterator<Mobiliario> iterator(){
		return lista.iterator();
	}
	
	@Override
	public String toString() {
		return "ListaGeneric [lista=" + lista + "]";
	}

	public void saveClinica(String fileName) {
		try {
			ObjectOutputStream objectOut = new ObjectOutputStream(new FileOutputStream(fileName));
			objectOut.writeObject(nome);
			objectOut.writeObject(lista);
			objectOut.close();
		} catch (IOException e) {
			System.out.println("Nao foi possivel guardar");
		}
		
	}

	@SuppressWarnings("unchecked")
	public void rescueClinica(String fileName) {
		ObjectInputStream objectIn;
		try {
			objectIn = new ObjectInputStream(new FileInputStream(fileName));
			this.nome = (String) objectIn.readObject();
			this.lista = (ListaGeneric<Mobiliario>) objectIn.readObject();
			objectIn.close();
		} catch (IOException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		
	}
	
}
