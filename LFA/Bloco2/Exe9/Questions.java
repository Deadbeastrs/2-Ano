import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Random;

public class Questions{

    public String question;
    public String id;
    public ArrayList<String> correct = new ArrayList<>();
    public ArrayList<String> wrong = new ArrayList<>();
    public Random rand = new Random();

    public Questions(String q,String id){
        question = q;
        this.id = id;
    }

    public Questions(){}

    public void addQuestion(String q){
        question = q;
    }

    public void addCorrect(String a){
        correct.add(a);
    }

    public void addWrong(String a){
        wrong.add(a);
    }

    public String[] getRandomAnswers(int n){
        List<String> temp = new ArrayList<>();
        temp.add(correct.get(rand.nextInt(correct.size()-1)));
        for(int i=1;i<=n-1;i++){
             temp.add(wrong.get(i));
        }
        Collections.shuffle(temp);
        return temp.toArray(new String[0]);
    }

    public String toStringAnswers(String[] temp) {
        String resp = "-" + question + "\n\t";
        int a = 1;
        for(String re : temp){
            resp = resp + a + ") " + re + "\n\t";
            a++;
        }
        return resp;
    }

    @Override
    public String toString() {
        return question + "\n" + id + "\n" + correct.toString() + "\n" + wrong.toString();
    }
}
