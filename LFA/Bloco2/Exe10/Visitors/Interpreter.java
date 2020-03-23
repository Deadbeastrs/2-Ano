import java.util.Arrays;
import java.util.Collection;
import java.util.Hashtable;
import java.util.List;
import java.util.Set;
import java.util.ArrayList;
import java.util.TreeSet;

public class Interpreter extends CalculatorBaseVisitor<String> {

   public Hashtable<String,String> mem = new Hashtable<>();
   String temp = "";

   @Override public String visitProgram(CalculatorParser.ProgramContext ctx) {
      ctx.commands().stream().forEach(s -> System.out.println("result: {"+visit(s).replaceAll(",$","")+"}"));
      return null;
   }

   @Override public String visitComAssign(CalculatorParser.ComAssignContext ctx) {
      return visit(ctx.assign());
   }

   @Override public String visitComEquation(CalculatorParser.ComEquationContext ctx) {
      return visit(ctx.equation());
   }

   @Override public String visitAssign(CalculatorParser.AssignContext ctx) {
      String temp = visit(ctx.equation());
      mem.put(ctx.Var().getText(),temp);
      return temp;
   }

   @Override public String visitEqSet(CalculatorParser.EqSetContext ctx) {
      temp = "";
      ctx.values().stream().forEach(s -> {
         temp = temp + visit(s) + ",";
      });      
      return temp;
   }

   @Override public String visitEqParent(CalculatorParser.EqParentContext ctx) {
      return visit(ctx.equation());
   }

   @Override public String visitEqVar(CalculatorParser.EqVarContext ctx) {
      return mem.get(ctx.Var().getText());
   }

   @Override public String visitEqOp(CalculatorParser.EqOpContext ctx) {
      Set<String> temp0 = new TreeSet<String>(Arrays.asList(visit(ctx.equation(0)).split(",")));
      Set<String> temp1 = new TreeSet<String>(Arrays.asList(visit(ctx.equation(1)).split(",")));
      if(ctx.op.getText().equals("+")){
         temp0.addAll(temp1);
      }
      if(ctx.op.getText().equals("&")){
         temp0.retainAll(temp1);
      }
      if(ctx.op.getText().equals("\\")){
         temp0.removeAll(temp1);
      }
      temp = "";
      temp0.stream().forEach(s -> {
         temp = temp + s + ',';});
      return temp;
   }

   @Override public String visitValues(CalculatorParser.ValuesContext ctx) {
      if(ctx.Number() != null){
         return ctx.Number().getText();
      }
      else if(ctx.Word() != null){
         return ctx.Word().getText();
      }
      return null;
   }
}
