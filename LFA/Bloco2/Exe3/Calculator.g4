grammar Calculator;

program: stat* EOF;

stat : expr? NEWLINE;

expr :  op=('-'|'+') expr            #ExprSignal
        | expr op=('*'|'/'|'%') expr #ExprMultDivMod
        | expr op=('+'|'-') expr     #ExprAddSub
        | Number                     #ExprInteger
        | '(' expr ')'               #ExprParent
        ;
        
Number : [0-9]+;
NEWLINE : '\r'? '\n';
WS : [ \t]+ -> skip ; 
COMMENT : '#' .*? '\n' -> skip;