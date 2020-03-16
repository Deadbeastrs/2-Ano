package aula08;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.Arrays;
import java.util.List;

public class QuestionList {
	String[] questions;
	String[][] ansers;
	String[] correct;
	String[] imgPath;
	
	public QuestionList(Path f) throws IOException {
		List<String> temp = Files.readAllLines(f);
		questions = new String[temp.size()];
		ansers = new String[temp.size()][4];
		correct = new String[temp.size()];
		imgPath = new String[temp.size()];
		int i = 0;
		for(String s : temp) {
			String[] temp1 = s.split("&&");
			imgPath[i] = temp1[0];
			questions[i] = temp1[1];
			ansers[i][0] = temp1[2];
			ansers[i][1] = temp1[3];
			ansers[i][2] = temp1[4];
			ansers[i][3] = temp1[5];
			correct[i] = ansers[i][Integer.parseInt(temp1[6])];
			i++;
		}
	}
	
	public Question getRandomQuestion() {
		int r = random(questions.length-1);
		Question temp = new Question(questions[r],ansers[r],correct[r],imgPath[r]);
		return temp;
	}
	
	private int random(int max) {
		return (int)(Math.random() * ((max - 1) + 1)) + 1;
	}
}
