import java.util.*;
import java.io.*;
public class iterp extends exameBaseVisitor<String>{
   
   private Scanner input = new Scanner(System.in);
   public Hashtable<String,String> var = new Hashtable<>();
   
   @Override public String visitProgram(exameParser.ProgramContext ctx) {
      return visitChildren(ctx);
   }

   @Override public String visitStat(exameParser.StatContext ctx) {
      return visitChildren(ctx);
   }

   @Override public String visitAssign(exameParser.AssignContext ctx) {
      String temp = input.nextLine();
      var.put(ctx.ID().getText(),temp);
      return visitChildren(ctx);
   }

   @Override public String visitVar(exameParser.VarContext ctx) {
      var.put(ctx.ID().getText(),visit(ctx.concat()));
      return visitChildren(ctx);
   }

   @Override public String visitPrint(exameParser.PrintContext ctx) {
      if(ctx.concat() != null){
         System.out.println(visit(ctx.concat()));
      }
      if(ctx.sub() != null){
         System.out.println(visit(ctx.sub()));
      }
      return visitChildren(ctx);
   }

   @Override public String visitConcat(exameParser.ConcatContext ctx) {
      String concat = "";
      if(ctx.STRING() != null){
         return ctx.STRING().getText().replace("\"","");
      }
      if(ctx.ID() != null){
         return var.get(ctx.ID().getText());
      }
      if(ctx.concat().size() == 2){
         concat = concat + visit(ctx.concat(0)) + visit(ctx.concat(1));
      }
      return concat;
   }

   @Override public String visitSub(exameParser.SubContext ctx) {
      String frase = visit(ctx.concat(0));
      if(ctx.concat().size() == 3){
         String char0 = visit(ctx.concat(1));
         String char1 = visit(ctx.concat(2));
         frase = frase.replace(char0,char1);
      }else{
         String char0 = visit(ctx.sub()).replace("\"","");
         String char1 = visit(ctx.concat(1));
         frase = frase.replace(char0,char1);
      }
      return frase;
   }
}
