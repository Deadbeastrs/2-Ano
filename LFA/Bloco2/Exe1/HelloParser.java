// Generated from Hello.g4 by ANTLR 4.8
import org.antlr.v4.runtime.atn.*;
import org.antlr.v4.runtime.dfa.DFA;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.misc.*;
import org.antlr.v4.runtime.tree.*;
import java.util.List;
import java.util.Iterator;
import java.util.ArrayList;

@SuppressWarnings({"all", "warnings", "unchecked", "unused", "cast"})
public class HelloParser extends Parser {
	static { RuntimeMetaData.checkVersion("4.8", RuntimeMetaData.VERSION); }

	protected static final DFA[] _decisionToDFA;
	protected static final PredictionContextCache _sharedContextCache =
		new PredictionContextCache();
	public static final int
		T__0=1, T__1=2, ID=3, WS=4;
	public static final int
		RULE_main = 0, RULE_top = 1, RULE_hello = 2, RULE_bye = 3;
	private static String[] makeRuleNames() {
		return new String[] {
			"main", "top", "hello", "bye"
		};
	}
	public static final String[] ruleNames = makeRuleNames();

	private static String[] makeLiteralNames() {
		return new String[] {
			null, "'hello'", "'bye'"
		};
	}
	private static final String[] _LITERAL_NAMES = makeLiteralNames();
	private static String[] makeSymbolicNames() {
		return new String[] {
			null, null, null, "ID", "WS"
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
	public String getGrammarFileName() { return "Hello.g4"; }

	@Override
	public String[] getRuleNames() { return ruleNames; }

	@Override
	public String getSerializedATN() { return _serializedATN; }

	@Override
	public ATN getATN() { return _ATN; }

	public HelloParser(TokenStream input) {
		super(input);
		_interp = new ParserATNSimulator(this,_ATN,_decisionToDFA,_sharedContextCache);
	}

	public static class MainContext extends ParserRuleContext {
		public List<TopContext> top() {
			return getRuleContexts(TopContext.class);
		}
		public TopContext top(int i) {
			return getRuleContext(TopContext.class,i);
		}
		public MainContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_main; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof HelloListener ) ((HelloListener)listener).enterMain(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof HelloListener ) ((HelloListener)listener).exitMain(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof HelloVisitor ) return ((HelloVisitor<? extends T>)visitor).visitMain(this);
			else return visitor.visitChildren(this);
		}
	}

	public final MainContext main() throws RecognitionException {
		MainContext _localctx = new MainContext(_ctx, getState());
		enterRule(_localctx, 0, RULE_main);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(9); 
			_errHandler.sync(this);
			_la = _input.LA(1);
			do {
				{
				{
				setState(8);
				top();
				}
				}
				setState(11); 
				_errHandler.sync(this);
				_la = _input.LA(1);
			} while ( _la==T__0 || _la==T__1 );
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

	public static class TopContext extends ParserRuleContext {
		public HelloContext hello() {
			return getRuleContext(HelloContext.class,0);
		}
		public ByeContext bye() {
			return getRuleContext(ByeContext.class,0);
		}
		public TopContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_top; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof HelloListener ) ((HelloListener)listener).enterTop(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof HelloListener ) ((HelloListener)listener).exitTop(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof HelloVisitor ) return ((HelloVisitor<? extends T>)visitor).visitTop(this);
			else return visitor.visitChildren(this);
		}
	}

	public final TopContext top() throws RecognitionException {
		TopContext _localctx = new TopContext(_ctx, getState());
		enterRule(_localctx, 2, RULE_top);
		try {
			setState(15);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case T__0:
				enterOuterAlt(_localctx, 1);
				{
				setState(13);
				hello();
				}
				break;
			case T__1:
				enterOuterAlt(_localctx, 2);
				{
				setState(14);
				bye();
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

	public static class HelloContext extends ParserRuleContext {
		public List<TerminalNode> ID() { return getTokens(HelloParser.ID); }
		public TerminalNode ID(int i) {
			return getToken(HelloParser.ID, i);
		}
		public HelloContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_hello; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof HelloListener ) ((HelloListener)listener).enterHello(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof HelloListener ) ((HelloListener)listener).exitHello(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof HelloVisitor ) return ((HelloVisitor<? extends T>)visitor).visitHello(this);
			else return visitor.visitChildren(this);
		}
	}

	public final HelloContext hello() throws RecognitionException {
		HelloContext _localctx = new HelloContext(_ctx, getState());
		enterRule(_localctx, 4, RULE_hello);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(17);
			match(T__0);
			setState(19); 
			_errHandler.sync(this);
			_la = _input.LA(1);
			do {
				{
				{
				setState(18);
				match(ID);
				}
				}
				setState(21); 
				_errHandler.sync(this);
				_la = _input.LA(1);
			} while ( _la==ID );
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

	public static class ByeContext extends ParserRuleContext {
		public List<TerminalNode> ID() { return getTokens(HelloParser.ID); }
		public TerminalNode ID(int i) {
			return getToken(HelloParser.ID, i);
		}
		public ByeContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_bye; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof HelloListener ) ((HelloListener)listener).enterBye(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof HelloListener ) ((HelloListener)listener).exitBye(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof HelloVisitor ) return ((HelloVisitor<? extends T>)visitor).visitBye(this);
			else return visitor.visitChildren(this);
		}
	}

	public final ByeContext bye() throws RecognitionException {
		ByeContext _localctx = new ByeContext(_ctx, getState());
		enterRule(_localctx, 6, RULE_bye);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(23);
			match(T__1);
			setState(25); 
			_errHandler.sync(this);
			_la = _input.LA(1);
			do {
				{
				{
				setState(24);
				match(ID);
				}
				}
				setState(27); 
				_errHandler.sync(this);
				_la = _input.LA(1);
			} while ( _la==ID );
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
		"\3\u608b\ua72a\u8133\ub9ed\u417c\u3be7\u7786\u5964\3\6 \4\2\t\2\4\3\t"+
		"\3\4\4\t\4\4\5\t\5\3\2\6\2\f\n\2\r\2\16\2\r\3\3\3\3\5\3\22\n\3\3\4\3\4"+
		"\6\4\26\n\4\r\4\16\4\27\3\5\3\5\6\5\34\n\5\r\5\16\5\35\3\5\2\2\6\2\4\6"+
		"\b\2\2\2\37\2\13\3\2\2\2\4\21\3\2\2\2\6\23\3\2\2\2\b\31\3\2\2\2\n\f\5"+
		"\4\3\2\13\n\3\2\2\2\f\r\3\2\2\2\r\13\3\2\2\2\r\16\3\2\2\2\16\3\3\2\2\2"+
		"\17\22\5\6\4\2\20\22\5\b\5\2\21\17\3\2\2\2\21\20\3\2\2\2\22\5\3\2\2\2"+
		"\23\25\7\3\2\2\24\26\7\5\2\2\25\24\3\2\2\2\26\27\3\2\2\2\27\25\3\2\2\2"+
		"\27\30\3\2\2\2\30\7\3\2\2\2\31\33\7\4\2\2\32\34\7\5\2\2\33\32\3\2\2\2"+
		"\34\35\3\2\2\2\35\33\3\2\2\2\35\36\3\2\2\2\36\t\3\2\2\2\6\r\21\27\35";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}