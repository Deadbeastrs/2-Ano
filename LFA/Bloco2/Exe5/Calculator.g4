grammar Calculator;

program: stat* EOF;

stat : expr? NEWLINE | assignment? NEWLINE;

assignment: ID '=' expr;

expr :  op=('-'|'+') expr          #ExprSignal
        | expr op=('*'|'/'|'%') expr #ExprMultDivMod
        | expr op=('+'|'-') expr   #ExprAddSub
        | ID                         #ExprId
        | Number                   #ExprInteger
        | '(' expr ')'             #ExprParent
        ;

ID : [a-zA-Z_]+;
Number : [0-9]+;
NEWLINE : '\r'? '\n';
WS : [ \t]+ -> skip ; 
COMMENT : '#' .*? '\n' -> skip;
