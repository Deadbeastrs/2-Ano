// Generated from Calculator.g4 by ANTLR 4.8
import org.antlr.v4.runtime.tree.ParseTreeVisitor;

/**
 * This interface defines a complete generic visitor for a parse tree produced
 * by {@link CalculatorParser}.
 *
 * @param <T> The return type of the visit operation. Use {@link Void} for
 * operations with no return type.
 */
public interface CalculatorVisitor<T> extends ParseTreeVisitor<T> {
	/**
	 * Visit a parse tree produced by {@link CalculatorParser#program}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitProgram(CalculatorParser.ProgramContext ctx);
	/**
	 * Visit a parse tree produced by the {@code ComAssign}
	 * labeled alternative in {@link CalculatorParser#commands}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitComAssign(CalculatorParser.ComAssignContext ctx);
	/**
	 * Visit a parse tree produced by the {@code ComEquation}
	 * labeled alternative in {@link CalculatorParser#commands}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitComEquation(CalculatorParser.ComEquationContext ctx);
	/**
	 * Visit a parse tree produced by {@link CalculatorParser#assign}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitAssign(CalculatorParser.AssignContext ctx);
	/**
	 * Visit a parse tree produced by the {@code EqSet}
	 * labeled alternative in {@link CalculatorParser#equation}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitEqSet(CalculatorParser.EqSetContext ctx);
	/**
	 * Visit a parse tree produced by the {@code EqParent}
	 * labeled alternative in {@link CalculatorParser#equation}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitEqParent(CalculatorParser.EqParentContext ctx);
	/**
	 * Visit a parse tree produced by the {@code EqVar}
	 * labeled alternative in {@link CalculatorParser#equation}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitEqVar(CalculatorParser.EqVarContext ctx);
	/**
	 * Visit a parse tree produced by the {@code EqOp}
	 * labeled alternative in {@link CalculatorParser#equation}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitEqOp(CalculatorParser.EqOpContext ctx);
	/**
	 * Visit a parse tree produced by the {@code values}
	 * labeled alternative in {@link CalculatorParser#commandscommandsequationequationequationequation}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitValues(CalculatorParser.ValuesContext ctx);
}