public class Interpreter extends CalculatorBaseVisitor<Double> {

   @Override public Double visitProgram(CalculatorParser.ProgramContext ctx) {
      return visitChildren(ctx);
   }

   @Override public Double visitStat(CalculatorParser.StatContext ctx) {
      System.out.println(visit(ctx.expr()));
      return null;
   }

   @Override public Double visitExprMultDivMod(CalculatorParser.ExprMultDivModContext ctx) {
      double val = 0;
      System.out.println("ReconheciMultDiv : " + ctx.op.getText() + "\nVou ver: " + ctx.expr());
      if(ctx.op.getText().equals("/")){
         val = visit(ctx.expr(0)) / visit(ctx.expr(1));
         return val;
      }else if(ctx.op.getText().equals("*")){
         val = visit(ctx.expr(0)) * visit(ctx.expr(1));
         return val;
      }
      else if(ctx.op.getText().equals("%")){
         val = visit(ctx.expr(0)) % visit(ctx.expr(1));
         return val;
      }
      return null;
   }

   @Override public Double visitExprAddSub(CalculatorParser.ExprAddSubContext ctx) {
      double val = 0;
      System.out.println("ReconheciAddSub : " + ctx.op.getText() + "\nVou ver: " + ctx.expr());
      if(ctx.op.getText().equals("+")){
         val = visit(ctx.expr(0)) + visit(ctx.expr(1));
         return val;
      }else if(ctx.op.getText().equals("-")){
         val = visit(ctx.expr(0)) - visit(ctx.expr(1));
         return val;
      }
      return null;
   }

   @Override public Double visitExprParent(CalculatorParser.ExprParentContext ctx) {
      return visit(ctx.expr());
   }

   @Override public Double visitExprInteger(CalculatorParser.ExprIntegerContext ctx) {
      System.out.println("Reconheci int: " + ctx.getText());
      return Double.parseDouble(ctx.getText());
   }

   @Override public Double visitExprSignal(CalculatorParser.ExprSignalContext ctx) {
      System.out.println("ReconheciSignal : " + ctx.op.getText() + "\nVou ver: ");
      if(ctx.op.getText().equals("+")){
         System.out.println(ctx.expr().getText() + "!");
         return visit(ctx.expr());
      }
      else if(ctx.op.getText().equals("-")){
         System.out.println(ctx.expr().getText() + "!");
         return -visit(ctx.expr());
      }
      return null;
   }

}
