import java.util.Hashtable;
import java.util.ArrayList;
public class Interpreter extends MultipleChoiceBaseVisitor<String> {

   ArrayList<Questions> mem = new ArrayList<>();
   Questions q;

   @Override public String visitProgram(MultipleChoiceParser.ProgramContext ctx) {
      ctx.lines().stream().forEach(s -> visit(s));
      return null;
   }

   @Override public String visitLines(MultipleChoiceParser.LinesContext ctx) {
      visit(ctx.question());
      return null;
   }

   @Override public String visitQuestion(MultipleChoiceParser.QuestionContext ctx) {
      q = new Questions(ctx.STRING().getText(),ctx.ID().getText());
      ctx.answers().stream().forEach(s -> visit(s));
      mem.add(q);
      return null;
   }

   @Override public String visitAnswers(MultipleChoiceParser.AnswersContext ctx) {
      if(ctx.Value().getText().equals("100")){ //Este ; é bugado
         q.addCorrect(ctx.STRING().getText());
      }else if(ctx.Value().getText().equals("0")){
         q.addWrong(ctx.STRING().getText());
      }
      return null;
   }
}

