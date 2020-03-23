import java.util.Hashtable;

public class Tradutor_Execute extends TradutorBaseVisitor<String> {
   
   public Hashtable<String,String> mem = new Hashtable<>();
   
   @Override public String visitProgram(TradutorParser.ProgramContext ctx) {
      return visitChildren(ctx);
   }

   @Override public String visitStat(TradutorParser.StatContext ctx) {
      return visitChildren(ctx);
   }

   @Override public String visitExpr(TradutorParser.ExprContext ctx) {
      mem.put(ctx.Word().getText(),ctx.Number().getText());
      return null;
   }
}
