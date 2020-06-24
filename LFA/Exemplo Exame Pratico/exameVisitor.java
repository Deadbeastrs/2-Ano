// Generated from exame.g4 by ANTLR 4.8
import org.antlr.v4.runtime.tree.ParseTreeVisitor;

/**
 * This interface defines a complete generic visitor for a parse tree produced
 * by {@link exameParser}.
 *
 * @param <T> The return type of the visit operation. Use {@link Void} for
 * operations with no return type.
 */
public interface exameVisitor<T> extends ParseTreeVisitor<T> {
	/**
	 * Visit a parse tree produced by {@link exameParser#program}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitProgram(exameParser.ProgramContext ctx);
	/**
	 * Visit a parse tree produced by {@link exameParser#stat}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitStat(exameParser.StatContext ctx);
	/**
	 * Visit a parse tree produced by {@link exameParser#assign}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitAssign(exameParser.AssignContext ctx);
	/**
	 * Visit a parse tree produced by {@link exameParser#var}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitVar(exameParser.VarContext ctx);
	/**
	 * Visit a parse tree produced by {@link exameParser#print}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitPrint(exameParser.PrintContext ctx);
	/**
	 * Visit a parse tree produced by {@link exameParser#sub}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitSub(exameParser.SubContext ctx);
	/**
	 * Visit a parse tree produced by {@link exameParser#concat}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitConcat(exameParser.ConcatContext ctx);
}