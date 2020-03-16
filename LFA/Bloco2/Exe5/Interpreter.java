import java.util.Hashtable;

public class Interpreter extends CalculatorBaseVisitor<Object> {

   public Hashtable<String,Double> list = new Hashtable<>();
   @Override public Object visitProgram(CalculatorParser.ProgramContext ctx) {
      System.out.println("\nResposta: ");
      ctx.stat().stream().forEach(s -> System.out.println(visit(s)));
      return null;
   }

   @Override public Object visitStat(CalculatorParser.StatContext ctx) {
      if(ctx.expr() != null){
         return visit(ctx.expr());
      }
      else if(ctx.assignment() != null){
         return visit(ctx.assignment());
      }
      return null;
   }

   @Override public Object visitAssignment(CalculatorParser.AssignmentContext ctx) {
      Double temp = (Double) visit(ctx.expr());
      list.put(ctx.ID().getText(), temp);
      return (String) ctx.ID().getText() + " -> " + temp;
   }

   @Override public Object visitExprAddSub(CalculatorParser.ExprAddSubContext ctx) {
      Double val;
      if(ctx.op.getText().equals("+")){
         val = (Double) visit(ctx.expr(0)) + (Double) visit(ctx.expr(1));
         return val;
      }else if(ctx.op.getText().equals("-")){
         val = (Double) visit(ctx.expr(0)) - (Double) visit(ctx.expr(1));
         return val;
      }
      return null;
   }

   @Override public Object visitExprParent(CalculatorParser.ExprParentContext ctx) {
      return visit(ctx.expr());
   }

   @Override public Object visitExprInteger(CalculatorParser.ExprIntegerContext ctx) {
      return Double.parseDouble(ctx.getText());
   }

   @Override public Object visitExprSignal(CalculatorParser.ExprSignalContext ctx) {
      if(ctx.op.getText().equals("+")){
         return (Double) visit(ctx.expr());
      }
      else if(ctx.op.getText().equals("-")){
         return - (Double) visit(ctx.expr());
      }
      return null;
   }

   @Override public Object visitExprId(CalculatorParser.ExprIdContext ctx) {
      return list.get(ctx.ID().getText());
   }

   @Override public Object visitExprMultDivMod(CalculatorParser.ExprMultDivModContext ctx) {
      Double val;
      if(ctx.op.getText().equals("/")){
         val = (Double) visit(ctx.expr(0)) / (Double) visit(ctx.expr(1));
         return val;
      }else if(ctx.op.getText().equals("*")){
         val = (Double) visit(ctx.expr(0)) * (Double) visit(ctx.expr(1));
         return val;
      }
      else if(ctx.op.getText().equals("%")){
         val = (Double) visit(ctx.expr(0)) % (Double) visit(ctx.expr(1));
         return val;
      }
      return null;
   }
}
