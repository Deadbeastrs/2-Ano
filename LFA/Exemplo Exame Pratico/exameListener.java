// Generated from exame.g4 by ANTLR 4.8
import org.antlr.v4.runtime.tree.ParseTreeListener;

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link exameParser}.
 */
public interface exameListener extends ParseTreeListener {
	/**
	 * Enter a parse tree produced by {@link exameParser#program}.
	 * @param ctx the parse tree
	 */
	void enterProgram(exameParser.ProgramContext ctx);
	/**
	 * Exit a parse tree produced by {@link exameParser#program}.
	 * @param ctx the parse tree
	 */
	void exitProgram(exameParser.ProgramContext ctx);
	/**
	 * Enter a parse tree produced by {@link exameParser#stat}.
	 * @param ctx the parse tree
	 */
	void enterStat(exameParser.StatContext ctx);
	/**
	 * Exit a parse tree produced by {@link exameParser#stat}.
	 * @param ctx the parse tree
	 */
	void exitStat(exameParser.StatContext ctx);
	/**
	 * Enter a parse tree produced by {@link exameParser#assign}.
	 * @param ctx the parse tree
	 */
	void enterAssign(exameParser.AssignContext ctx);
	/**
	 * Exit a parse tree produced by {@link exameParser#assign}.
	 * @param ctx the parse tree
	 */
	void exitAssign(exameParser.AssignContext ctx);
	/**
	 * Enter a parse tree produced by {@link exameParser#var}.
	 * @param ctx the parse tree
	 */
	void enterVar(exameParser.VarContext ctx);
	/**
	 * Exit a parse tree produced by {@link exameParser#var}.
	 * @param ctx the parse tree
	 */
	void exitVar(exameParser.VarContext ctx);
	/**
	 * Enter a parse tree produced by {@link exameParser#print}.
	 * @param ctx the parse tree
	 */
	void enterPrint(exameParser.PrintContext ctx);
	/**
	 * Exit a parse tree produced by {@link exameParser#print}.
	 * @param ctx the parse tree
	 */
	void exitPrint(exameParser.PrintContext ctx);
	/**
	 * Enter a parse tree produced by {@link exameParser#sub}.
	 * @param ctx the parse tree
	 */
	void enterSub(exameParser.SubContext ctx);
	/**
	 * Exit a parse tree produced by {@link exameParser#sub}.
	 * @param ctx the parse tree
	 */
	void exitSub(exameParser.SubContext ctx);
	/**
	 * Enter a parse tree produced by {@link exameParser#concat}.
	 * @param ctx the parse tree
	 */
	void enterConcat(exameParser.ConcatContext ctx);
	/**
	 * Exit a parse tree produced by {@link exameParser#concat}.
	 * @param ctx the parse tree
	 */
	void exitConcat(exameParser.ConcatContext ctx);
}