package aula02;

public class HistNode {
	
	private Cliente c;
	private Video v ;
	
	public HistNode(Video v, Cliente c) {
		this.c = c;
		this.v = v;
	}
	
	public int getVideoId() {
		return this.v.getId();
	}
	
	public String getVideoTitulo() {
		return this.v.getTitulo();
	}
	
	public int getClientId() {
		return this.c.getId();
	}
	
	public String getCname() {
		return this.c.getName();
	}

	public String toString() {
		return "videoId=" + this.v.getId() + ", clientId=" + this.c.getId();
	}
	
	
}
