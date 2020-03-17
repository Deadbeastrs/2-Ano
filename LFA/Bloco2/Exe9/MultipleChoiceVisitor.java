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
	 * Visit a parse tree produced by the {@code lineQuestion}
	 * labeled alternative in {@link MultipleChoiceParser#line}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitLineQuestion(MultipleChoiceParser.LineQuestionContext ctx);
	/**
	 * Visit a parse tree produced by the {@code lineAnswer}
	 * labeled alternative in {@link MultipleChoiceParser#line}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitLineAnswer(MultipleChoiceParser.LineAnswerContext ctx);
	/**
	 * Visit a parse tree produced by the {@code lineEnd}
	 * labeled alternative in {@link MultipleChoiceParser#line}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitLineEnd(MultipleChoiceParser.LineEndContext ctx);
	/**
	 * Visit a parse tree produced by {@link MultipleChoiceParser#answers}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitAnswers(MultipleChoiceParser.AnswersContext ctx);
}