// Generated from MultipleChoice.g4 by ANTLR 4.8
import org.antlr.v4.runtime.tree.ParseTreeVisitor;

/**
 * This interface defines a complete generic visitor for a parse tree produced
 * by {@link MultipleChoiceParser}.
 *
 * @param <T> The return type of the visit operation. Use {@link Void} for
 * operations with no return type.
 */
public interface MultipleChoiceVisitor<T> extends ParseTreeVisitor<T> {
	/**
	 * Visit a parse tree produced by {@link MultipleChoiceParser#program}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitProgram(MultipleChoiceParser.ProgramContext ctx);
	/**
	 * Visit a parse tree produced by {@link MultipleChoiceParser#lines}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitLines(MultipleChoiceParser.LinesContext ctx);
	/**
	 * Visit a parse tree produced by {@link MultipleChoiceParser#question}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitQuestion(MultipleChoiceParser.QuestionContext ctx);
	/**
	 * Visit a parse tree produced by {@link MultipleChoiceParser#answers}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitAnswers(MultipleChoiceParser.AnswersContext ctx);
}