import java.util.Hashtable;

public class Interpreter extends CalculatorBaseVisitor<Object> {

   public Hashtable<String,Fraction> mem = new Hashtable<>();
   
   @Override public Object visitProgram(CalculatorParser.ProgramContext ctx) {
      ctx.commands().stream().forEach(s -> visit(s));
      return null;
   }

   @Override public Object visitComPrint(CalculatorParser.ComPrintContext ctx) {
      return visit(ctx.print());
   }

   @Override public Object visitComAssign(CalculatorParser.ComAssignContext ctx) {
      return visit(ctx.assign());
   }

   @Override public Object visitComEquation(CalculatorParser.ComEquationContext ctx) {
      return visit(ctx.equation());
   }

   @Override public Object visitPrint(CalculatorParser.PrintContext ctx) {
      System.out.println(visit(ctx.equation()));
      return null;
   }

   @Override public Object visitAssign(CalculatorParser.AssignContext ctx) {
      mem.put(ctx.Var().getText(),(Fraction) visit(ctx.equation()));
      return null;
   }

   @Override public Object visitEqFraction(CalculatorParser.EqFractionContext ctx) {
      Fraction temp = new Fraction(Integer.parseInt(ctx.Number(0).getText()),Integer.parseInt(ctx.Number(1).getText()));
      return new Fraction(Integer.parseInt(ctx.Number(0).getText()),Integer.parseInt(ctx.Number(1).getText()));
   }

   @Override public Object visitEqNumber(CalculatorParser.EqNumberContext ctx) {
      return new Fraction(Integer.parseInt(ctx.Number().getText()),1);
   }

   @Override public Object visitEqSumSub(CalculatorParser.EqSumSubContext ctx) {
      Fraction temp = (Fraction) visit(ctx.equation(0));
      Fraction temp1 = (Fraction) visit(ctx.equation(1));
      if(ctx.op.getText().equals("+")){
         return temp.add(temp1);
      }else if(ctx.op.getText().equals("-")){
         return temp.sub(temp1);
      }
      return null;
   }

   @Override public Object visitEqParent(CalculatorParser.EqParentContext ctx) {
      return visit(ctx.equation());
   }

   @Override public Object visitEqElev(CalculatorParser.EqElevContext ctx) {
      Fraction temp = (Fraction) visit(ctx.equation());
      return temp.pow(Integer.parseInt(ctx.Number().getText()));
   }

   @Override public Object visitEqReduction(CalculatorParser.EqReductionContext ctx) {
      Fraction temp = (Fraction) visit(ctx.equation());
      return temp;
   }

   @Override public Object visitEqMult(CalculatorParser.EqMultContext ctx) {
      Fraction temp = (Fraction) visit(ctx.equation(0));
      if(ctx.op.getText().equals("*")){
         return temp.mult( (Fraction) visit(ctx.equation(1)));
      }else if(ctx.op.getText().equals(":")){
         return temp.div( (Fraction) visit(ctx.equation(1)));
      }
      return null;
   }

   @Override public Object visitEqVar(CalculatorParser.EqVarContext ctx) {
      return mem.get(ctx.Var().getText());
   }

   @Override public Object visitEqSignal(CalculatorParser.EqSignalContext ctx) {
      Fraction temp = (Fraction) visit(ctx.equation());
      if(ctx.op.getText().equals("+")){
         return new Fraction(temp.num,temp.den);
      }else if(ctx.op.getText().equals("-")){
         return new Fraction(-temp.num,temp.den);
      }
      return null;
   }
}

class Fraction{
   public int num;
   public int den;

   public Fraction(int num,int den){
      this.num = num;
      this.den = den;
   }

   public Fraction add(Fraction temp){
      return reduce(this.den*temp.num + this.num*temp.den,temp.den * this.den);  
   }

   public Fraction sub(Fraction temp){
      return reduce(this.num*temp.den - this.den*temp.num,temp.den * this.den);  
   }

   public Fraction mult(Fraction temp){
      return reduce(temp.num * this.num,temp.den * this.den);
   }

   public Fraction div(Fraction temp){  
      return reduce(temp.den*this.num,temp.num*this.den);
   }

   public Fraction reduce(int num,int den){
      int gcm = gcm(num,den);
      return new Fraction(num/Math.abs(gcm),den/Math.abs(gcm));
   }

   public int gcm(int a, int b) {
      return b == 0 ? a : gcm(b, a % b); 
  }

  public Fraction pow(int exp){
     return new Fraction( (int)Math.pow(this.num,exp),(int)Math.pow(this.den,exp));
  }

  @Override
  public String toString() {
     return this.num + "/" + this.den;
  }
}
