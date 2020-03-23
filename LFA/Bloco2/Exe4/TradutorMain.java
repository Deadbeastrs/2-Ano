import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.*;
import java.io.*;

import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.tree.*;

public class TradutorMain {

   public static void main(String[] args) throws Exception {
      Scanner sc = new Scanner(new File("p1.txt"));
      List<Integer> vals = new ArrayList<>();
      String temp = "";
      while (sc.hasNextLine()) {
         String[] words = sc.nextLine().split(" ");
         for (String word : words) {
            String[] temp2 = word.split("-");
            for (String num : temp2) {
               if (isNumeric(getNumber(num))) {
                  vals.add(Integer.parseInt(getNumber(num)));
               } else {
                  temp = temp + " " + getNumber(num);
               }
            }
         }
         int tempInt = vals.get(0);
         int tempTotal = 0;
         if(vals.size() == 1){
            tempTotal = tempInt;
         }
         for (int i = 1; i < vals.size(); i++) {
            if (vals.get(i - 1) < vals.get(i)) {
               tempInt = tempInt * vals.get(i);
            } else {
               if (i == vals.size() - 1) {
                  tempInt = tempInt + vals.get(i);
               }
               tempTotal = tempTotal + tempInt;
               tempInt = vals.get(i);
            }
         }
         System.out.println(temp + " " + tempTotal);
         vals = new ArrayList<>();
         tempInt = 0;
         tempTotal = 0;
      }
   }

   public static boolean isNumeric(String str) {
      try {
         Double.parseDouble(str);
         return true;
      } catch (NumberFormatException e) {
         return false;
      }
   }

   public static String getNumber(String word) throws Exception {
      // create a CharStream that reads from standard input:
      CharStream input = CharStreams.fromStream(new FileInputStream("numbers.txt"));
      // create a lexer thaString d = getNumber("sds");t feeds off of input
      // CharStream:
      TradutorLexer lexer = new TradutorLexer(input);
      // create a buffer of tokens pulled from the lexer:
      CommonTokenStream tokens = new CommonTokenStream(lexer);
      // create a parser that feeds off the tokens buffer:
      TradutorParser parser = new TradutorParser(tokens);
      // replace error listener:
      // parser.removeErrorListeners(); // remove ConsoleErrorListener
      // parser.addErrorListener(new ErrorHandlingListener());
      // begin parsing at program rule:
      ParseTree tree = parser.program();
      if (parser.getNumberOfSyntaxErrors() == 0) {
         // print LISP-style tree:
         // System.out.println(tree.toStringTree(parser));
         Tradutor_Execute visitor0 = new Tradutor_Execute();
         visitor0.visit(tree);
         Hashtable<String, String> temp = visitor0.mem;
         if (temp.get(word) != null) {
            return "" + temp.get(word);
         } else {
            return word;
         }
      }
      return "";
   }
}
