// Generated from Tradutor.g4 by ANTLR 4.8
import org.antlr.v4.runtime.tree.ParseTreeListener;

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link TradutorParser}.
 */
public interface TradutorListener extends ParseTreeListener {
	/**
	 * Enter a parse tree produced by {@link TradutorParser#program}.
	 * @param ctx the parse tree
	 */
	void enterProgram(TradutorParser.ProgramContext ctx);
	/**
	 * Exit a parse tree produced by {@link TradutorParser#program}.
	 * @param ctx the parse tree
	 */
	void exitProgram(TradutorParser.ProgramContext ctx);
	/**
	 * Enter a parse tree produced by {@link TradutorParser#stat}.
	 * @param ctx the parse tree
	 */
	void enterStat(TradutorParser.StatContext ctx);
	/**
	 * Exit a parse tree produced by {@link TradutorParser#stat}.
	 * @param ctx the parse tree
	 */
	void exitStat(TradutorParser.StatContext ctx);
	/**
	 * Enter a parse tree produced by {@link TradutorParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterExpr(TradutorParser.ExprContext ctx);
	/**
	 * Exit a parse tree produced by {@link TradutorParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitExpr(TradutorParser.ExprContext ctx);
}