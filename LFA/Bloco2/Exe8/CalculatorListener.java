// Generated from Calculator.g4 by ANTLR 4.8
import org.antlr.v4.runtime.tree.ParseTreeListener;

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link CalculatorParser}.
 */
public interface CalculatorListener extends ParseTreeListener {
	/**
	 * Enter a parse tree produced by {@link CalculatorParser#program}.
	 * @param ctx the parse tree
	 */
	void enterProgram(CalculatorParser.ProgramContext ctx);
	/**
	 * Exit a parse tree produced by {@link CalculatorParser#program}.
	 * @param ctx the parse tree
	 */
	void exitProgram(CalculatorParser.ProgramContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ComPrint}
	 * labeled alternative in {@link CalculatorParser#commands}.
	 * @param ctx the parse tree
	 */
	void enterComPrint(CalculatorParser.ComPrintContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ComPrint}
	 * labeled alternative in {@link CalculatorParser#commands}.
	 * @param ctx the parse tree
	 */
	void exitComPrint(CalculatorParser.ComPrintContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ComAssign}
	 * labeled alternative in {@link CalculatorParser#commands}.
	 * @param ctx the parse tree
	 */
	void enterComAssign(CalculatorParser.ComAssignContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ComAssign}
	 * labeled alternative in {@link CalculatorParser#commands}.
	 * @param ctx the parse tree
	 */
	void exitComAssign(CalculatorParser.ComAssignContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ComEquation}
	 * labeled alternative in {@link CalculatorParser#commands}.
	 * @param ctx the parse tree
	 */
	void enterComEquation(CalculatorParser.ComEquationContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ComEquation}
	 * labeled alternative in {@link CalculatorParser#commands}.
	 * @param ctx the parse tree
	 */
	void exitComEquation(CalculatorParser.ComEquationContext ctx);
	/**
	 * Enter a parse tree produced by {@link CalculatorParser#print}.
	 * @param ctx the parse tree
	 */
	void enterPrint(CalculatorParser.PrintContext ctx);
	/**
	 * Exit a parse tree produced by {@link CalculatorParser#print}.
	 * @param ctx the parse tree
	 */
	void exitPrint(CalculatorParser.PrintContext ctx);
	/**
	 * Enter a parse tree produced by {@link CalculatorParser#assign}.
	 * @param ctx the parse tree
	 */
	void enterAssign(CalculatorParser.AssignContext ctx);
	/**
	 * Exit a parse tree produced by {@link CalculatorParser#assign}.
	 * @param ctx the parse tree
	 */
	void exitAssign(CalculatorParser.AssignContext ctx);
	/**
	 * Enter a parse tree produced by the {@code EqElev}
	 * labeled alternative in {@link CalculatorParser#equation}.
	 * @param ctx the parse tree
	 */
	void enterEqElev(CalculatorParser.EqElevContext ctx);
	/**
	 * Exit a parse tree produced by the {@code EqElev}
	 * labeled alternative in {@link CalculatorParser#equation}.
	 * @param ctx the parse tree
	 */
	void exitEqElev(CalculatorParser.EqElevContext ctx);
	/**
	 * Enter a parse tree produced by the {@code EqFraction}
	 * labeled alternative in {@link CalculatorParser#equation}.
	 * @param ctx the parse tree
	 */
	void enterEqFraction(CalculatorParser.EqFractionContext ctx);
	/**
	 * Exit a parse tree produced by the {@code EqFraction}
	 * labeled alternative in {@link CalculatorParser#equation}.
	 * @param ctx the parse tree
	 */
	void exitEqFraction(CalculatorParser.EqFractionContext ctx);
	/**
	 * Enter a parse tree produced by the {@code EqSumSub}
	 * labeled alternative in {@link CalculatorParser#equation}.
	 * @param ctx the parse tree
	 */
	void enterEqSumSub(CalculatorParser.EqSumSubContext ctx);
	/**
	 * Exit a parse tree produced by the {@code EqSumSub}
	 * labeled alternative in {@link CalculatorParser#equation}.
	 * @param ctx the parse tree
	 */
	void exitEqSumSub(CalculatorParser.EqSumSubContext ctx);
	/**
	 * Enter a parse tree produced by the {@code EqParent}
	 * labeled alternative in {@link CalculatorParser#equation}.
	 * @param ctx the parse tree
	 */
	void enterEqParent(CalculatorParser.EqParentContext ctx);
	/**
	 * Exit a parse tree produced by the {@code EqParent}
	 * labeled alternative in {@link CalculatorParser#equation}.
	 * @param ctx the parse tree
	 */
	void exitEqParent(CalculatorParser.EqParentContext ctx);
	/**
	 * Enter a parse tree produced by the {@code EqReduction}
	 * labeled alternative in {@link CalculatorParser#equation}.
	 * @param ctx the parse tree
	 */
	void enterEqReduction(CalculatorParser.EqReductionContext ctx);
	/**
	 * Exit a parse tree produced by the {@code EqReduction}
	 * labeled alternative in {@link CalculatorParser#equation}.
	 * @param ctx the parse tree
	 */
	void exitEqReduction(CalculatorParser.EqReductionContext ctx);
	/**
	 * Enter a parse tree produced by the {@code EqMult}
	 * labeled alternative in {@link CalculatorParser#equation}.
	 * @param ctx the parse tree
	 */
	void enterEqMult(CalculatorParser.EqMultContext ctx);
	/**
	 * Exit a parse tree produced by the {@code EqMult}
	 * labeled alternative in {@link CalculatorParser#equation}.
	 * @param ctx the parse tree
	 */
	void exitEqMult(CalculatorParser.EqMultContext ctx);
	/**
	 * Enter a parse tree produced by the {@code EqNumber}
	 * labeled alternative in {@link CalculatorParser#equation}.
	 * @param ctx the parse tree
	 */
	void enterEqNumber(CalculatorParser.EqNumberContext ctx);
	/**
	 * Exit a parse tree produced by the {@code EqNumber}
	 * labeled alternative in {@link CalculatorParser#equation}.
	 * @param ctx the parse tree
	 */
	void exitEqNumber(CalculatorParser.EqNumberContext ctx);
	/**
	 * Enter a parse tree produced by the {@code EqVar}
	 * labeled alternative in {@link CalculatorParser#equation}.
	 * @param ctx the parse tree
	 */
	void enterEqVar(CalculatorParser.EqVarContext ctx);
	/**
	 * Exit a parse tree produced by the {@code EqVar}
	 * labeled alternative in {@link CalculatorParser#equation}.
	 * @param ctx the parse tree
	 */
	void exitEqVar(CalculatorParser.EqVarContext ctx);
	/**
	 * Enter a parse tree produced by the {@code EqSignal}
	 * labeled alternative in {@link CalculatorParser#equation}.
	 * @param ctx the parse tree
	 */
	void enterEqSignal(CalculatorParser.EqSignalContext ctx);
	/**
	 * Exit a parse tree produced by the {@code EqSignal}
	 * labeled alternative in {@link CalculatorParser#equation}.
	 * @param ctx the parse tree
	 */
	void exitEqSignal(CalculatorParser.EqSignalContext ctx);
}