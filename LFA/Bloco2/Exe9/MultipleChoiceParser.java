// Generated from MultipleChoice.g4 by ANTLR 4.8
import org.antlr.v4.runtime.atn.*;
import org.antlr.v4.runtime.dfa.DFA;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.misc.*;
import org.antlr.v4.runtime.tree.*;
import java.util.List;
import java.util.Iterator;
import java.util.ArrayList;

@SuppressWarnings({"all", "warnings", "unchecked", "unused", "cast"})
public class MultipleChoiceParser extends Parser {
	static { RuntimeMetaData.checkVersion("4.8", RuntimeMetaData.VERSION); }

	protected static final DFA[] _decisionToDFA;
	protected static final PredictionContextCache _sharedContextCache =
		new PredictionContextCache();
	public static final int
		T__0=1, T__1=2, T__2=3, T__3=4, T__4=5, ID=6, STRING=7, Value=8, NEWLINE=9, 
		WS=10, COMMENT=11;
	public static final int
		RULE_program = 0, RULE_lines = 1, RULE_line = 2, RULE_answers = 3;
	private static String[] makeRuleNames() {
		return new String[] {
			"program", "lines", "line", "answers"
		};
	}
	public static final String[] ruleNames = makeRuleNames();

	private static String[] makeLiteralNames() {
		return new String[] {
			null, "'('", "') {'", "'}'", "'  '", "':'"
		};
	}
	private static final String[] _LITERAL_NAMES = makeLiteralNames();
	private static String[] makeSymbolicNames() {
		return new String[] {
			null, null, null, null, null, null, "ID", "STRING", "Value", "NEWLINE", 
			"WS", "COMMENT"
		};
	}
	private static final String[] _SYMBOLIC_NAMES = makeSymbolicNames();
	public static final Vocabulary VOCABULARY = new VocabularyImpl(_LITERAL_NAMES, _SYMBOLIC_NAMES);

	/**
	 * @deprecated Use {@link #VOCABULARY} instead.
	 */
	@Deprecated
	public static final String[] tokenNames;
	static {
		tokenNames = new String[_SYMBOLIC_NAMES.length];
		for (int i = 0; i < tokenNames.length; i++) {
			tokenNames[i] = VOCABULARY.getLiteralName(i);
			if (tokenNames[i] == null) {
				tokenNames[i] = VOCABULARY.getSymbolicName(i);
			}

			if (tokenNames[i] == null) {
				tokenNames[i] = "<INVALID>";
			}
		}
	}

	@Override
	@Deprecated
	public String[] getTokenNames() {
		return tokenNames;
	}

	@Override

	public Vocabulary getVocabulary() {
		return VOCABULARY;
	}

	@Override
	public String getGrammarFileName() { return "MultipleChoice.g4"; }

	@Override
	public String[] getRuleNames() { return ruleNames; }

	@Override
	public String getSerializedATN() { return _serializedATN; }

	@Override
	public ATN getATN() { return _ATN; }

	public MultipleChoiceParser(TokenStream input) {
		super(input);
		_interp = new ParserATNSimulator(this,_ATN,_decisionToDFA,_sharedContextCache);
	}

	public static class ProgramContext extends ParserRuleContext {
		public TerminalNode EOF() { return getToken(MultipleChoiceParser.EOF, 0); }
		public List<LinesContext> lines() {
			return getRuleContexts(LinesContext.class);
		}
		public LinesContext lines(int i) {
			return getRuleContext(LinesContext.class,i);
		}
		public ProgramContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_program; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MultipleChoiceListener ) ((MultipleChoiceListener)listener).enterProgram(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MultipleChoiceListener ) ((MultipleChoiceListener)listener).exitProgram(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MultipleChoiceVisitor ) return ((MultipleChoiceVisitor<? extends T>)visitor).visitProgram(this);
			else return visitor.visitChildren(this);
		}
	}

	public final ProgramContext program() throws RecognitionException {
		ProgramContext _localctx = new ProgramContext(_ctx, getState());
		enterRule(_localctx, 0, RULE_program);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(11);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__2) | (1L << T__3) | (1L << ID) | (1L << NEWLINE))) != 0)) {
				{
				{
				setState(8);
				lines();
				}
				}
				setState(13);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(14);
			match(EOF);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class LinesContext extends ParserRuleContext {
		public TerminalNode NEWLINE() { return getToken(MultipleChoiceParser.NEWLINE, 0); }
		public LineContext line() {
			return getRuleContext(LineContext.class,0);
		}
		public LinesContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_lines; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MultipleChoiceListener ) ((MultipleChoiceListener)listener).enterLines(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MultipleChoiceListener ) ((MultipleChoiceListener)listener).exitLines(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MultipleChoiceVisitor ) return ((MultipleChoiceVisitor<? extends T>)visitor).visitLines(this);
			else return visitor.visitChildren(this);
		}
	}

	public final LinesContext lines() throws RecognitionException {
		LinesContext _localctx = new LinesContext(_ctx, getState());
		enterRule(_localctx, 2, RULE_lines);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(17);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__2) | (1L << T__3) | (1L << ID))) != 0)) {
				{
				setState(16);
				line();
				}
			}

			setState(19);
			match(NEWLINE);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class LineContext extends ParserRuleContext {
		public LineContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_line; }
	 
		public LineContext() { }
		public void copyFrom(LineContext ctx) {
			super.copyFrom(ctx);
		}
	}
	public static class LineQuestionContext extends LineContext {
		public TerminalNode ID() { return getToken(MultipleChoiceParser.ID, 0); }
		public TerminalNode STRING() { return getToken(MultipleChoiceParser.STRING, 0); }
		public LineQuestionContext(LineContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MultipleChoiceListener ) ((MultipleChoiceListener)listener).enterLineQuestion(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MultipleChoiceListener ) ((MultipleChoiceListener)listener).exitLineQuestion(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MultipleChoiceVisitor ) return ((MultipleChoiceVisitor<? extends T>)visitor).visitLineQuestion(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class LineAnswerContext extends LineContext {
		public AnswersContext answers() {
			return getRuleContext(AnswersContext.class,0);
		}
		public LineAnswerContext(LineContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MultipleChoiceListener ) ((MultipleChoiceListener)listener).enterLineAnswer(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MultipleChoiceListener ) ((MultipleChoiceListener)listener).exitLineAnswer(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MultipleChoiceVisitor ) return ((MultipleChoiceVisitor<? extends T>)visitor).visitLineAnswer(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class LineEndContext extends LineContext {
		public LineEndContext(LineContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MultipleChoiceListener ) ((MultipleChoiceListener)listener).enterLineEnd(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MultipleChoiceListener ) ((MultipleChoiceListener)listener).exitLineEnd(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MultipleChoiceVisitor ) return ((MultipleChoiceVisitor<? extends T>)visitor).visitLineEnd(this);
			else return visitor.visitChildren(this);
		}
	}

	public final LineContext line() throws RecognitionException {
		LineContext _localctx = new LineContext(_ctx, getState());
		enterRule(_localctx, 4, RULE_line);
		try {
			setState(27);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case ID:
				_localctx = new LineQuestionContext(_localctx);
				enterOuterAlt(_localctx, 1);
				{
				setState(21);
				match(ID);
				setState(22);
				match(T__0);
				setState(23);
				match(STRING);
				setState(24);
				match(T__1);
				}
				break;
			case T__3:
				_localctx = new LineAnswerContext(_localctx);
				enterOuterAlt(_localctx, 2);
				{
				setState(25);
				answers();
				}
				break;
			case T__2:
				_localctx = new LineEndContext(_localctx);
				enterOuterAlt(_localctx, 3);
				{
				setState(26);
				match(T__2);
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class AnswersContext extends ParserRuleContext {
		public TerminalNode STRING() { return getToken(MultipleChoiceParser.STRING, 0); }
		public TerminalNode Value() { return getToken(MultipleChoiceParser.Value, 0); }
		public AnswersContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_answers; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MultipleChoiceListener ) ((MultipleChoiceListener)listener).enterAnswers(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MultipleChoiceListener ) ((MultipleChoiceListener)listener).exitAnswers(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MultipleChoiceVisitor ) return ((MultipleChoiceVisitor<? extends T>)visitor).visitAnswers(this);
			else return visitor.visitChildren(this);
		}
	}

	public final AnswersContext answers() throws RecognitionException {
		AnswersContext _localctx = new AnswersContext(_ctx, getState());
		enterRule(_localctx, 6, RULE_answers);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(29);
			match(T__3);
			setState(30);
			match(STRING);
			setState(31);
			match(T__4);
			setState(32);
			match(Value);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static final String _serializedATN =
		"\3\u608b\ua72a\u8133\ub9ed\u417c\u3be7\u7786\u5964\3\r%\4\2\t\2\4\3\t"+
		"\3\4\4\t\4\4\5\t\5\3\2\7\2\f\n\2\f\2\16\2\17\13\2\3\2\3\2\3\3\5\3\24\n"+
		"\3\3\3\3\3\3\4\3\4\3\4\3\4\3\4\3\4\5\4\36\n\4\3\5\3\5\3\5\3\5\3\5\3\5"+
		"\2\2\6\2\4\6\b\2\2\2$\2\r\3\2\2\2\4\23\3\2\2\2\6\35\3\2\2\2\b\37\3\2\2"+
		"\2\n\f\5\4\3\2\13\n\3\2\2\2\f\17\3\2\2\2\r\13\3\2\2\2\r\16\3\2\2\2\16"+
		"\20\3\2\2\2\17\r\3\2\2\2\20\21\7\2\2\3\21\3\3\2\2\2\22\24\5\6\4\2\23\22"+
		"\3\2\2\2\23\24\3\2\2\2\24\25\3\2\2\2\25\26\7\13\2\2\26\5\3\2\2\2\27\30"+
		"\7\b\2\2\30\31\7\3\2\2\31\32\7\t\2\2\32\36\7\4\2\2\33\36\5\b\5\2\34\36"+
		"\7\5\2\2\35\27\3\2\2\2\35\33\3\2\2\2\35\34\3\2\2\2\36\7\3\2\2\2\37 \7"+
		"\6\2\2 !\7\t\2\2!\"\7\7\2\2\"#\7\n\2\2#\t\3\2\2\2\5\r\23\35";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}