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
		T__0=1, T__1=2, T__2=3, T__3=4, T__4=5, T__5=6, T__6=7, Value=8, ID=9, 
		STRING=10, NEWLINE=11, WS=12, COMMENT=13;
	public static final int
		RULE_program = 0, RULE_lines = 1, RULE_question = 2, RULE_answers = 3;
	private static String[] makeRuleNames() {
		return new String[] {
			"program", "lines", "question", "answers"
		};
	}
	public static final String[] ruleNames = makeRuleNames();

	private static String[] makeLiteralNames() {
		return new String[] {
			null, "'('", "')'", "'{\n'", "'}'", "'  '", "':'", "';\n'"
		};
	}
	private static final String[] _LITERAL_NAMES = makeLiteralNames();
	private static String[] makeSymbolicNames() {
		return new String[] {
			null, null, null, null, null, null, null, null, "Value", "ID", "STRING", 
			"NEWLINE", "WS", "COMMENT"
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
			while (_la==ID || _la==NEWLINE) {
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
		public QuestionContext question() {
			return getRuleContext(QuestionContext.class,0);
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
			if (_la==ID) {
				{
				setState(16);
				question();
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

	public static class QuestionContext extends ParserRuleContext {
		public TerminalNode ID() { return getToken(MultipleChoiceParser.ID, 0); }
		public TerminalNode STRING() { return getToken(MultipleChoiceParser.STRING, 0); }
		public List<AnswersContext> answers() {
			return getRuleContexts(AnswersContext.class);
		}
		public AnswersContext answers(int i) {
			return getRuleContext(AnswersContext.class,i);
		}
		public QuestionContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_question; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MultipleChoiceListener ) ((MultipleChoiceListener)listener).enterQuestion(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MultipleChoiceListener ) ((MultipleChoiceListener)listener).exitQuestion(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MultipleChoiceVisitor ) return ((MultipleChoiceVisitor<? extends T>)visitor).visitQuestion(this);
			else return visitor.visitChildren(this);
		}
	}

	public final QuestionContext question() throws RecognitionException {
		QuestionContext _localctx = new QuestionContext(_ctx, getState());
		enterRule(_localctx, 4, RULE_question);
		int _la;
		try {
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
			setState(25);
			match(T__2);
			setState(27); 
			_errHandler.sync(this);
			_la = _input.LA(1);
			do {
				{
				{
				setState(26);
				answers();
				}
				}
				setState(29); 
				_errHandler.sync(this);
				_la = _input.LA(1);
			} while ( _la==T__4 );
			setState(31);
			match(T__3);
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
			setState(33);
			match(T__4);
			setState(34);
			match(STRING);
			setState(35);
			match(T__5);
			setState(36);
			match(Value);
			setState(37);
			match(T__6);
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
		"\3\u608b\ua72a\u8133\ub9ed\u417c\u3be7\u7786\u5964\3\17*\4\2\t\2\4\3\t"+
		"\3\4\4\t\4\4\5\t\5\3\2\7\2\f\n\2\f\2\16\2\17\13\2\3\2\3\2\3\3\5\3\24\n"+
		"\3\3\3\3\3\3\4\3\4\3\4\3\4\3\4\3\4\6\4\36\n\4\r\4\16\4\37\3\4\3\4\3\5"+
		"\3\5\3\5\3\5\3\5\3\5\3\5\2\2\6\2\4\6\b\2\2\2(\2\r\3\2\2\2\4\23\3\2\2\2"+
		"\6\27\3\2\2\2\b#\3\2\2\2\n\f\5\4\3\2\13\n\3\2\2\2\f\17\3\2\2\2\r\13\3"+
		"\2\2\2\r\16\3\2\2\2\16\20\3\2\2\2\17\r\3\2\2\2\20\21\7\2\2\3\21\3\3\2"+
		"\2\2\22\24\5\6\4\2\23\22\3\2\2\2\23\24\3\2\2\2\24\25\3\2\2\2\25\26\7\r"+
		"\2\2\26\5\3\2\2\2\27\30\7\13\2\2\30\31\7\3\2\2\31\32\7\f\2\2\32\33\7\4"+
		"\2\2\33\35\7\5\2\2\34\36\5\b\5\2\35\34\3\2\2\2\36\37\3\2\2\2\37\35\3\2"+
		"\2\2\37 \3\2\2\2 !\3\2\2\2!\"\7\6\2\2\"\7\3\2\2\2#$\7\7\2\2$%\7\f\2\2"+
		"%&\7\b\2\2&\'\7\n\2\2\'(\7\t\2\2(\t\3\2\2\2\5\r\23\37";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}