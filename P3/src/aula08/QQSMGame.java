package aula08;

import java.awt.BorderLayout;
import java.awt.FlowLayout;
import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.ItemListener;
import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;

import javax.swing.*;
import javax.swing.event.ChangeListener;

public class QQSMGame implements ActionListener{
	
	private JFrame j;
	private ButtonGroup option = new ButtonGroup();
	private QuestionList ql;
	private Question q;
	private int money;
	private int[] helpMem = new int[3];
	
	public QQSMGame() throws IOException {
		this.j = new JFrame("Quem quer ser milionario");
		j.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		j.setSize(1030, 700);
		Path p = Paths.get("QQSM/questions.txt");
		ql = new QuestionList(p);
		helpMem[0] = 2;
		helpMem[1] = 2; // ainda nao foi utilizado
		helpMem[2] = 2;
		money = 25;
		start();
		
	}
	
	private void start()  {
		int[] moneyList = {25,50,125,250,500,750,1500,2500,5000,10000,16000,32000,64000,125000,250000};
		if(this.money == moneyList[moneyList.length-1]) {
			win();
		}
		for(int i = 0;i < moneyList.length;i++) {
			if(this.money == moneyList[i]) {
				this.money = moneyList[i+1];
				break;
			}
		}
		this.q = ql.getRandomQuestion();
		loadMenu();
	}
	
	private void loadMenu() {
		JPanel content = new JPanel(new GridLayout(2,1));
		JPanel top = loadTop();
		JPanel bottom = new JPanel(new BorderLayout());
		JPanel bottomLeft = new JPanel(new BorderLayout());
		JPanel helps = loadhelps();
		JPanel butPanel = loadResposta();
		JPanel quitPanel = new JPanel(new FlowLayout());
		
		JButton quit = new JButton("Desistir");
		JButton confirm = new JButton("Confirmar");
		
		bottom.add(bottomLeft, BorderLayout.WEST);
		bottom.add(quitPanel, BorderLayout.CENTER);
		
		quitPanel.add(confirm);
		confirm.addActionListener(this);
		quitPanel.add(quit);
		quit.addActionListener(this);
		
		bottomLeft.add(helps,BorderLayout.NORTH);
		bottomLeft.add(butPanel,BorderLayout.CENTER);
		
		this.j.setContentPane(content);
		this.j.getContentPane().add(top);
		this.j.getContentPane().add(bottom);
		this.j.setVisible(true);
	}
	
	private JPanel loadResposta() {
		JPanel butPanel = new JPanel(new FlowLayout());
		JRadioButton but1 = new JRadioButton(this.q.getAnser()[0]);
		JRadioButton but2 = new JRadioButton(this.q.getAnser()[1]);
		JRadioButton but3 = new JRadioButton(this.q.getAnser()[2]);
		JRadioButton but4 = new JRadioButton(this.q.getAnser()[3]);
		JRadioButton[] arr = {but1,but2,but3,but4};
		option = new ButtonGroup();
		int c = 0;
		if(helpMem[2] == 1) {
			for(JRadioButton b: arr) {
				if(c == 2) {
					break;
				}
				if(!b.getText().equals(q.getCorrect())) {
					b.setEnabled(false);
					c++;
				}
			}
			helpMem[2] = 0;
		}else {
			for(JRadioButton b: arr) {
				b.setEnabled(true);
			}
		}
		but1.setActionCommand(but1.getText());
		but2.setActionCommand(but2.getText());
		but3.setActionCommand(but3.getText());
		but4.setActionCommand(but4.getText());
		option.add(but1);
		option.add(but2);
		option.add(but3);
		option.add(but4);
		butPanel.add(but1);
		butPanel.add(but2);
		butPanel.add(but3);
		butPanel.add(but4);
		return butPanel;
	}
	
	private JPanel loadhelps() {
		JPanel helps = new JPanel(new FlowLayout());
		JButton help0 = new JButton("Ajuda Publico");
		JButton help1 = new JButton("Telefone");
		JButton help2 = new JButton("50 - 50");
		if(helpMem[0] == 0) {
			help0.setEnabled(false);
		}
		if(helpMem[1] == 0) {
			help1.setEnabled(false);
		}
		if(helpMem[2] == 0) {
			help2.setEnabled(false);
		}
		helps.add(help0);
		help0.addActionListener(this);
		helps.add(help1);
		help1.addActionListener(this);
		helps.add(help2);
		help2.addActionListener(this);
		return helps;
	}
	
	private JPanel loadTop() {
		JLabel money = new JLabel("Quantia em jogo: "+this.money);
		JPanel top = new JPanel(new BorderLayout());
		JLabel img = new JLabel();
		JLabel question = new JLabel();
		money.setVerticalAlignment(JLabel.TOP);
		question.setText(this.q.getQuestion());
		Icon image = new ImageIcon(this.q.getImgPath());
		img.setIcon(image);
		top.add(img,BorderLayout.WEST);
		top.add(money,BorderLayout.EAST);
		top.add(question,BorderLayout.CENTER);
		return top;
	}
	
	 
	@Override
	public void actionPerformed(ActionEvent e) {
		JButton b = (JButton) e.getSource();
		if(b.getText().equals("Confirmar")) {
			if(option.getSelection().getActionCommand().equals(q.getCorrect())){
				JOptionPane.showMessageDialog(null, 
		                "Correto", 
		                "Jogo Continua", 
		                JOptionPane.WARNING_MESSAGE);
				start();
			}else {
				reset();
			}
		}
		if(b.getText().equals("Desistir")) {
			reset();
		}
		if(b.getText().equals("50 - 50")) {
			helpMem[2] = 1;
			loadMenu();
		}
		if(b.getText().equals("Telefone")) {
			helpMem[1] = 0;
			loadMenu();
			String resp = "";
			double r = Math.random();
			if(r < 0.9) {
				resp = q.getCorrect();
			}else {
				int r2 = random(3,1);
				resp = q.getAnser()[r2];
			}
			JOptionPane.showMessageDialog(null, 
	                "A resposta certa deve ser: " + resp, 
	                "Telefone", 
	                JOptionPane.WARNING_MESSAGE);
		}
		if(b.getText().equals("Ajuda Publico")) {
			helpMem[0] = 0;
			loadMenu();
			String res = "";
			for(String qest : q.getAnser()) {
				if(qest.equals(q.getCorrect())) {
					res = res + qest + "->" + random(130,60) + "\n";
				}else {
					res = res + qest + "->" + random(80,0) + "\n";
				}
			}
			JOptionPane.showMessageDialog(null,
	                "Numero de votos: \n" + res , 
	                "Audiencia", 
	                JOptionPane.WARNING_MESSAGE);
		}
	}
	
	private void reset() {
		JOptionPane.showMessageDialog(null, 
                "Game Over, ganhou: " + money, 
                "Jogo Terminou", 
                JOptionPane.WARNING_MESSAGE);
		money = 25;
		helpMem[0] = 2;
		helpMem[1] = 2;
		helpMem[2] = 2;
		start();
	}
	
	private void win() {
		JOptionPane.showMessageDialog(null, 
                "Ganhou o jogo! Recebeu: " + money, 
                "Jogo Terminou", 
                JOptionPane.WARNING_MESSAGE);
	}
	
	private int random(int max, int min) {
		return (int)(Math.random() * ((max - min) + min)) + min;
	}
}
