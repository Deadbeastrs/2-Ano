package aula04;

import java.util.ArrayList;

public class Disciplina {
	
	private String nome;
	private String area;
	private int ect;
	private Professor prof;
	private ArrayList<Estudante> alunos;
	
	public Disciplina(String nome, String area, int ect, Professor prof) {
		this.nome = nome;
		this.area = area;
		this.ect = ect;
		this.prof = prof;
		this.alunos = new ArrayList<Estudante>();
	}
	
	public boolean addAluno(Estudante est) {
		if(!alunos.contains(est)) {
			alunos.add(est);
			return true;
		}
		return false;
	}
	
	public boolean delAluno(int nMec) {
		for(Estudante e : alunos) {
			if(e.nMec() == nMec) {
				alunos.remove(e);
				return true;
			}
		}
		return false;
	}
	
	public boolean alunoInscrito(int nMec) {
		for(Estudante e : alunos) {
			if(e.nMec() == nMec) {
				return true;
			}
		}
		return false;
	}
	
	public int numAlunos() {
		return alunos.size();
	}

	@Override
	public String toString() {
		return "Disciplina: " + nome + ", area=" + area + ", ect=" + ect + ", professor=" + prof + ",Nº alunos inscritos=" + numAlunos();
	}
	
	public Estudante[] getAlunos() {
		Estudante[] temp = new Estudante[alunos.size()];
		return alunos.toArray(temp);
	}
	
	public Estudante[] getAlunos(String tipo) {
		ArrayList<Estudante> temp = new ArrayList<>();
		for(Estudante e : alunos) {
			if(e.getClass().getSimpleName().equals(tipo)) {
				temp.add(e);
			}
		}
		return temp.toArray(new Estudante[0]);
	}
	
	
}
