package aula02;

import java.util.ArrayList;

public class Database {
	
	private ArrayList<Video> vList;
	private ArrayList<Cliente> cList;
	private ArrayList<HistNode> hist;
	
	public Database() {
		vList = new ArrayList<Video>();
		cList = new ArrayList<Cliente>();
		hist = new ArrayList<HistNode>();
	}
	
	public void addVideo(Video v) {
		vList.add(v);
	}
	
	public void removeVideo(int pos) {
		vList.remove(pos);
	}
	
	public void addClient(Cliente c) {
		cList.add(c);
	}
	
	public void removeClient(int pos) {
		cList.remove(pos);
	}
	
	public void addHist(HistNode h) {
		hist.add(h);
	}
	
	public String getStringHist(Video v) {
		String text = "";
		for(int i = 0; i < hist.size();i++){
			if((hist.get(i).getVideoId() + "").equals(v.getId() + "")) {
				text = text + i + "-" + hist.get(i).getCname() + " ";
			}
		}
		return text;
	}
	
	public String findClientHist(Cliente c) {
		String text = "";
		for(int i = 0; i < hist.size();i++){
			if((hist.get(i).getClientId() + "").equals(c.getId() + "")) {
				text = text + i + "-" + hist.get(i).getVideoTitulo() + " ";
			}
		}
		return text;
	}
	
	public void printVlist() {
		for(int i = 0; i < vList.size(); i++) {
			System.out.println("Posicao: " + i + " - " + vList.get(i).toString());
		}
	}
	
	public void printClist() {
		for(int i = 0; i < cList.size(); i++) {
			System.out.println("Posicao: " + i + " - " + cList.get(i).toString());
		}
	}
	
	public void printHist() {
		for(int i = 0; i < hist.size(); i++) {
			System.out.println("Posicao: " + i + " - " + hist.get(i).toString());
		}
	}
	
	public Video findVideo(String nid) {
		for(int i = 0; i < vList.size();i++){
			if((vList.get(i).getTitulo() + "").equals(nid) || (vList.get(i).getId() + "").equals(nid)) {
				return vList.get(i);
			}
		}
		return null;
	}
	
	public Cliente findClient(String nid) {
		for(int i = 0; i < cList.size();i++){
			if((cList.get(i).getId() + "").equals(nid) || (cList.get(i).getName() + "").equals(nid) ) {
				return cList.get(i);
			}
		}
		return null;
	}
}
