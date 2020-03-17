import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.tree.*;
import java.io.FileInputStream;
import java.util.List;

public class MultipleChoiceMain {
   public static void main(String[] args) throws Exception {
      // create a CharStream that reads from standard input:
      CharStream input = CharStreams.fromStream(new FileInputStream(args[0]));
      // create a lexer that feeds off of input CharStream:
      MultipleChoiceLexer lexer = new MultipleChoiceLexer(input);
      // create a buffer of tokens pulled from the lexer:
      CommonTokenStream tokens = new CommonTokenStream(lexer);
      // create a parser that feeds off the tokens buffer:
      MultipleChoiceParser parser = new MultipleChoiceParser(tokens);
      // replace error listener:
      //parser.removeErrorListeners(); // remove ConsoleErrorListener
      //parser.addErrorListener(new ErrorHandlingListener());
      // begin parsing at program rule:
      ParseTree tree = parser.program();
      if (parser.getNumberOfSyntaxErrors() == 0) {
         // print LISP-style tree:
         // System.out.println(tree.toStringTree(parser));
         Interpreter visitor0 = new Interpreter();
         visitor0.visit(tree);
         List<Questions> temp = visitor0.mem;
         for(Questions q : temp){
            if(q.id.contains(args[1])){
               System.out.println(q.toStringAnswers(q.getRandomAnswers(Integer.parseInt(args[2]))));
            }
         }
      }
   }
}
