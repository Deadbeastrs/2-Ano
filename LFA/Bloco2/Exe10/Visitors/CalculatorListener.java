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
	 * Enter a parse tree produced by the {@code EqSet}
	 * labeled alternative in {@link CalculatorParser#equation}.
	 * @param ctx the parse tree
	 */
	void enterEqSet(CalculatorParser.EqSetContext ctx);
	/**
	 * Exit a parse tree produced by the {@code EqSet}
	 * labeled alternative in {@link CalculatorParser#equation}.
	 * @param ctx the parse tree
	 */
	void exitEqSet(CalculatorParser.EqSetContext ctx);
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
	 * Enter a parse tree produced by the {@code EqOp}
	 * labeled alternative in {@link CalculatorParser#equation}.
	 * @param ctx the parse tree
	 */
	void enterEqOp(CalculatorParser.EqOpContext ctx);
	/**
	 * Exit a parse tree produced by the {@code EqOp}
	 * labeled alternative in {@link CalculatorParser#equation}.
	 * @param ctx the parse tree
	 */
	void exitEqOp(CalculatorParser.EqOpContext ctx);
	/**
	 * Enter a parse tree produced by the {@code values}
	 * labeled alternative in {@link CalculatorParser#commandscommandsequationequationequationequation}.
	 * @param ctx the parse tree
	 */
	void enterValues(CalculatorParser.ValuesContext ctx);
	/**
	 * Exit a parse tree produced by the {@code values}
	 * labeled alternative in {@link CalculatorParser#commandscommandsequationequationequationequation}.
	 * @param ctx the parse tree
	 */
	void exitValues(CalculatorParser.ValuesContext ctx);
}