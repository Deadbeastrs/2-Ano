import java.util.Hashtable;
public class Interpreter extends CalculatorBaseVisitor<String> {
   
   public Hashtable<String,String> list = new Hashtable<>();

   @Override public String visitProgram(CalculatorParser.ProgramContext ctx) {
      ctx.stat().stream().forEach(s -> System.out.println(visit(s)));
      return null;
   }

   @Override public String visitStatExpr(CalculatorParser.StatExprContext ctx) {
      return visit(ctx.expr());
   }

   @Override public String visitStatAssignment(CalculatorParser.StatAssignmentContext ctx) {
      return visit(ctx.assignment());
   }

   @Override public String visitAssignment(CalculatorParser.AssignmentContext ctx) {
      String temp = visit(ctx.expr());
      list.put(ctx.ID().getText(), temp);
      return ctx.ID().getText() + " -> " + temp;
   }

   @Override public String visitExprId(CalculatorParser.ExprIdContext ctx) {
      System.out.println(list.get(ctx.getText()));
      return list.get(ctx.getText());
   }

   @Override public String visitExprParent(CalculatorParser.ExprParentContext ctx) {
      return visit(ctx.expr());
   }

   @Override public String visitExprInteger(CalculatorParser.ExprIntegerContext ctx) {
      return ctx.getText();
   }

   @Override public String visitExprSignal(CalculatorParser.ExprSignalContext ctx) {
      return visit(ctx.expr()) + " !" + ctx.op.getText() ;
   }

   @Override public String visitExprAddSub(CalculatorParser.ExprAddSubContext ctx) {
      return visit(ctx.expr(0)) + " " + visit(ctx.expr(1)) + " " + ctx.op.getText() ;
   }

   @Override public String visitExprMultDivMod(CalculatorParser.ExprMultDivModContext ctx) {
      return visit(ctx.expr(0)) + " " + visit(ctx.expr(1)) + " " + ctx.op.getText() ;
   }
}
