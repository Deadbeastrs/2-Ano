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
	 * Enter a parse tree produced by {@link MultipleChoiceParser#question}.
	 * @param ctx the parse tree
	 */
	void enterQuestion(MultipleChoiceParser.QuestionContext ctx);
	/**
	 * Exit a parse tree produced by {@link MultipleChoiceParser#question}.
	 * @param ctx the parse tree
	 */
	void exitQuestion(MultipleChoiceParser.QuestionContext ctx);
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