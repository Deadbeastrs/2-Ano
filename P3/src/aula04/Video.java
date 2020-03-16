package aula04;

public class Video {
	private int id;
	private String titulo;
	private String categoria;
	private int idade;
	private boolean available;
	private int ratingTotal = 0;
	private double ratingMedio = 0;
	
	public Video(int id, String titulo, String categoria, int idade, boolean available) {
		this.id = id;
		this.titulo = titulo;
		this.categoria = categoria;
		this.idade = idade;
		this.available = available;
	}
	
	public Video(String text) {
		String temp[] = text.split(", ");
		this.id = (int) (Math.random() * 999999999);
		this.titulo = temp[0];
		this.categoria = temp[1];
		this.idade = Integer.parseInt(temp[2]);
		this.available = true;
	}
	
	public String getTitulo() {
		return this.titulo;
	}
	
	public int getId() {
		return this.id;
	}
	
	public void setrating(int rat) {
		this.ratingTotal = ratingTotal + rat;
		this.ratingMedio = (ratingMedio + rat) / 2 ;
	}
	
	public String getRating() {
		return "Rating Total: " + this.ratingTotal + "\nRating Medio: " + this.ratingMedio;
	}
	
	public String toString() {
		return "Id: " + id + " Titulo: " + titulo + " Categoria: " + categoria + " Idade: " + idade + " Disponivel: " + available;
	}
	
	public void changeState(boolean b) {
		if(b) {
			this.available = true;
		}else {
			this.available = false;
		}
	}
	
	public boolean getState() {
		return this.available;
	}
}
