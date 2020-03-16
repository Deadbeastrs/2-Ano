public class Interpreter extends SuffixCalculatorBaseVisitor<String> {

   @Override public String visitProgram(SuffixCalculatorParser.ProgramContext ctx) {
      return visitChildren(ctx);
   }

   @Override public String visitStat(SuffixCalculatorParser.StatContext ctx) {
      System.out.println(visit(ctx.expr()));
      return visitChildren(ctx);
   }

   @Override public String visitExprNumber(SuffixCalculatorParser.ExprNumberContext ctx) {
      return ctx.getText();
   }

   @Override public String visitExprSuffix(SuffixCalculatorParser.ExprSuffixContext ctx) {
      double i0 = Double.parseDouble(visit(ctx.expr(0)));
      double i1 = Double.parseDouble(visit(ctx.expr(1)));
      String i2 = ctx.op.getText();
      double s = 0;
      if(i2.equals("+")){
         s = i0 + i1;
      }
      else if(i2.equals("-")){
         s = i0 - i1;
      }else if(i2.equals("*")){
         s = i0 * i1;
      }else if(i2.equals("/")){
         s = i0 / i1;
      }
      return s+"";
   }
}
