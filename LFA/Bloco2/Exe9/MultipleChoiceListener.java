// Generated from MultipleChoice.g4 by ANTLR 4.8
import org.antlr.v4.runtime.tree.ParseTreeListener;

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link MultipleChoiceParser}.
 */
public interface MultipleChoiceListener extends ParseTreeListener {
	/**
	 * Enter a parse tree produced by {@link MultipleChoiceParser#program}.
	 * @param ctx the parse tree
	 */
	void enterProgram(MultipleChoiceParser.ProgramContext ctx);
	/**
	 * Exit a parse tree produced by {@link MultipleChoiceParser#program}.
	 * @param ctx the parse tree
	 */
	void exitProgram(MultipleChoiceParser.ProgramContext ctx);
	/**
	 * Enter a parse tree produced by {@link MultipleChoiceParser#lines}.
	 * @param ctx the parse tree
	 */
	void enterLines(MultipleChoiceParser.LinesContext ctx);
	/**
	 * Exit a parse tree produced by {@link MultipleChoiceParser#lines}.
	 * @param ctx the parse tree
	 */
	void exitLines(MultipleChoiceParser.LinesContext ctx);
	/**
	 * Enter a parse tree produced by the {@code lineQuestion}
	 * labeled alternative in {@link MultipleChoiceParser#line}.
	 * @param ctx the parse tree
	 */
	void enterLineQuestion(MultipleChoiceParser.LineQuestionContext ctx);
	/**
	 * Exit a parse tree produced by the {@code lineQuestion}
	 * labeled alternative in {@link MultipleChoiceParser#line}.
	 * @param ctx the parse tree
	 */
	void exitLineQuestion(MultipleChoiceParser.LineQuestionContext ctx);
	/**
	 * Enter a parse tree produced by the {@code lineAnswer}
	 * labeled alternative in {@link MultipleChoiceParser#line}.
	 * @param ctx the parse tree
	 */
	void enterLineAnswer(MultipleChoiceParser.LineAnswerContext ctx);
	/**
	 * Exit a parse tree produced by the {@code lineAnswer}
	 * labeled alternative in {@link MultipleChoiceParser#line}.
	 * @param ctx the parse tree
	 */
	void exitLineAnswer(MultipleChoiceParser.LineAnswerContext ctx);
	/**
	 * Enter a parse tree produced by the {@code lineEnd}
	 * labeled alternative in {@link MultipleChoiceParser#line}.
	 * @param ctx the parse tree
	 */
	void enterLineEnd(MultipleChoiceParser.LineEndContext ctx);
	/**
	 * Exit a parse tree produced by the {@code lineEnd}
	 * labeled alternative in {@link MultipleChoiceParser#line}.
	 * @param ctx the parse tree
	 */
	void exitLineEnd(MultipleChoiceParser.LineEndContext ctx);
	/**
	 * Enter a parse tree produced by {@link MultipleChoiceParser#answers}.
	 * @param ctx the parse tree
	 */
	void enterAnswers(MultipleChoiceParser.AnswersContext ctx);
	/**
	 * Exit a parse tree produced by {@link MultipleChoiceParser#answers}.
	 * @param ctx the parse tree
	 */
	void exitAnswers(MultipleChoiceParser.AnswersContext ctx);
}