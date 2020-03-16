public class Execute extends HelloBaseVisitor<String> {

   @Override public String visitMain(HelloParser.MainContext ctx) {
      return visitChildren(ctx);
   }

   @Override public String visitTop(HelloParser.TopContext ctx) {
      return visitChildren(ctx);
   }

   @Override public String visitHello(HelloParser.HelloContext ctx) {
      System.out.println("Ola" + ctx.ID());
      return visitChildren(ctx);
   }

   @Override public String visitBye(HelloParser.ByeContext ctx) {
      System.out.println("Adeus" + ctx.ID());
      return visitChildren(ctx);
   }
}
