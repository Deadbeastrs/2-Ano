// Generated from MultipleChoice.g4 by ANTLR 4.8
import org.antlr.v4.runtime.Lexer;
import org.antlr.v4.runtime.CharStream;
import org.antlr.v4.runtime.Token;
import org.antlr.v4.runtime.TokenStream;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.atn.*;
import org.antlr.v4.runtime.dfa.DFA;
import org.antlr.v4.runtime.misc.*;

@SuppressWarnings({"all", "warnings", "unchecked", "unused", "cast"})
public class MultipleChoiceLexer extends Lexer {
	static { RuntimeMetaData.checkVersion("4.8", RuntimeMetaData.VERSION); }

	protected static final DFA[] _decisionToDFA;
	protected static final PredictionContextCache _sharedContextCache =
		new PredictionContextCache();
	public static final int
		T__0=1, T__1=2, T__2=3, T__3=4, T__4=5, ID=6, STRING=7, Value=8, NEWLINE=9, 
		WS=10, COMMENT=11;
	public static String[] channelNames = {
		"DEFAULT_TOKEN_CHANNEL", "HIDDEN"
	};

	public static String[] modeNames = {
		"DEFAULT_MODE"
	};

	private static String[] makeRuleNames() {
		return new String[] {
			"T__0", "T__1", "T__2", "T__3", "T__4", "ID", "STRING", "ESC", "Value", 
			"NEWLINE", "WS", "COMMENT"
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


	public MultipleChoiceLexer(CharStream input) {
		super(input);
		_interp = new LexerATNSimulator(this,_ATN,_decisionToDFA,_sharedContextCache);
	}

	@Override
	public String getGrammarFileName() { return "MultipleChoice.g4"; }

	@Override
	public String[] getRuleNames() { return ruleNames; }

	@Override
	public String getSerializedATN() { return _serializedATN; }

	@Override
	public String[] getChannelNames() { return channelNames; }

	@Override
	public String[] getModeNames() { return modeNames; }

	@Override
	public ATN getATN() { return _ATN; }

	public static final String _serializedATN =
		"\3\u608b\ua72a\u8133\ub9ed\u417c\u3be7\u7786\u5964\2\r^\b\1\4\2\t\2\4"+
		"\3\t\3\4\4\t\4\4\5\t\5\4\6\t\6\4\7\t\7\4\b\t\b\4\t\t\t\4\n\t\n\4\13\t"+
		"\13\4\f\t\f\4\r\t\r\3\2\3\2\3\3\3\3\3\3\3\3\3\4\3\4\3\5\3\5\3\5\3\6\3"+
		"\6\3\7\6\7*\n\7\r\7\16\7+\3\b\3\b\3\b\7\b\61\n\b\f\b\16\b\64\13\b\3\b"+
		"\3\b\3\t\3\t\3\t\3\t\5\t<\n\t\3\n\6\n?\n\n\r\n\16\n@\3\n\3\n\3\13\5\13"+
		"F\n\13\3\13\3\13\3\f\6\fK\n\f\r\f\16\fL\3\f\3\f\3\r\5\rR\n\r\3\r\3\r\7"+
		"\rV\n\r\f\r\16\rY\13\r\3\r\3\r\3\r\3\r\4\62W\2\16\3\3\5\4\7\5\t\6\13\7"+
		"\r\b\17\t\21\2\23\n\25\13\27\f\31\r\3\2\5\6\2\60\60\62;C\\c|\3\2\62;\4"+
		"\2\13\13\"\"\2e\2\3\3\2\2\2\2\5\3\2\2\2\2\7\3\2\2\2\2\t\3\2\2\2\2\13\3"+
		"\2\2\2\2\r\3\2\2\2\2\17\3\2\2\2\2\23\3\2\2\2\2\25\3\2\2\2\2\27\3\2\2\2"+
		"\2\31\3\2\2\2\3\33\3\2\2\2\5\35\3\2\2\2\7!\3\2\2\2\t#\3\2\2\2\13&\3\2"+
		"\2\2\r)\3\2\2\2\17-\3\2\2\2\21;\3\2\2\2\23>\3\2\2\2\25E\3\2\2\2\27J\3"+
		"\2\2\2\31Q\3\2\2\2\33\34\7*\2\2\34\4\3\2\2\2\35\36\7+\2\2\36\37\7\"\2"+
		"\2\37 \7}\2\2 \6\3\2\2\2!\"\7\177\2\2\"\b\3\2\2\2#$\7\"\2\2$%\7\"\2\2"+
		"%\n\3\2\2\2&\'\7<\2\2\'\f\3\2\2\2(*\t\2\2\2)(\3\2\2\2*+\3\2\2\2+)\3\2"+
		"\2\2+,\3\2\2\2,\16\3\2\2\2-\62\7$\2\2.\61\5\21\t\2/\61\13\2\2\2\60.\3"+
		"\2\2\2\60/\3\2\2\2\61\64\3\2\2\2\62\63\3\2\2\2\62\60\3\2\2\2\63\65\3\2"+
		"\2\2\64\62\3\2\2\2\65\66\7$\2\2\66\20\3\2\2\2\678\7^\2\28<\7$\2\29:\7"+
		"^\2\2:<\7^\2\2;\67\3\2\2\2;9\3\2\2\2<\22\3\2\2\2=?\t\3\2\2>=\3\2\2\2?"+
		"@\3\2\2\2@>\3\2\2\2@A\3\2\2\2AB\3\2\2\2BC\7=\2\2C\24\3\2\2\2DF\7\17\2"+
		"\2ED\3\2\2\2EF\3\2\2\2FG\3\2\2\2GH\7\f\2\2H\26\3\2\2\2IK\t\4\2\2JI\3\2"+
		"\2\2KL\3\2\2\2LJ\3\2\2\2LM\3\2\2\2MN\3\2\2\2NO\b\f\2\2O\30\3\2\2\2PR\7"+
		"\f\2\2QP\3\2\2\2QR\3\2\2\2RS\3\2\2\2SW\7%\2\2TV\13\2\2\2UT\3\2\2\2VY\3"+
		"\2\2\2WX\3\2\2\2WU\3\2\2\2XZ\3\2\2\2YW\3\2\2\2Z[\7\f\2\2[\\\3\2\2\2\\"+
		"]\b\r\2\2]\32\3\2\2\2\f\2+\60\62;@ELQW\3\b\2\2";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}