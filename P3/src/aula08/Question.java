package aula08;

import java.util.Arrays;

public class Question {
	private String question;
	private String[] anser;
	private String correct;
	private String imgPath;
	
	public Question(String question, String anser[], String correct, String imgPath) {
		this.question = question;
		this.anser = anser;
		this.correct = correct;
		this.imgPath = "QQSM/imgs/" + imgPath.substring(5, imgPath.length());
	}

	public String getQuestion() {
		return question;
	}

	public String[] getAnser() {
		return anser;
	}

	public String getCorrect() {
		return correct;
	}

	public String getImgPath() {
		return imgPath;
	}
	
	
}
