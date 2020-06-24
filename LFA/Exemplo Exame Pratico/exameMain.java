import java.util.Scanner;
import java.io.*;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.tree.*;

public class exameMain {
   public static void main(String[] args) {
      try {
         String fileName = args[0];
         File fin = new File(fileName);
         Scanner sc = new Scanner(fin);
         String lineText = null;
         int numLine = 1;
         if (sc.hasNextLine())
            lineText = sc.nextLine();
         exameParser parser = new exameParser(null);
         // replace error listener:
         //parser.removeErrorListeners(); // remove ConsoleErrorListener
         //parser.addErrorListener(new ErrorHandlingListener());
         iterp visitor0 = new iterp();
         while(lineText != null) {
            // create a CharStream that reads from standard input:
            CharStream input = CharStreams.fromString(lineText + "\n");
            // create a lexer that feeds off of input CharStream:
            exameLexer lexer = new exameLexer(input);
            lexer.setLine(numLine);
            lexer.setCharPositionInLine(0);
            // create a buffer of tokens pulled from the lexer:
            CommonTokenStream tokens = new CommonTokenStream(lexer);
            // create a parser that feeds off the tokens buffer:
            parser.setInputStream(tokens);
            // begin parsing at program rule:
            ParseTree tree = parser.program();
            if (parser.getNumberOfSyntaxErrors() == 0) {
               // print LISP-style tree:
               // System.out.println(tree.toStringTree(parser));
               visitor0.visit(tree);
            }
            if (sc.hasNextLine())
               lineText = sc.nextLine();
            else
               lineText = null;
            numLine++;
         }
      }
      catch(RecognitionException e) {
         e.printStackTrace();
         System.exit(1);
      }
      catch(FileNotFoundException e) {
         e.printStackTrace();
         System.exit(1);
      }
   }
}
