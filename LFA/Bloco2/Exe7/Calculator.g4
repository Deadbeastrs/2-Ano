grammar Calculator;

program: stat* EOF;

stat : expr? NEWLINE            #StatExpr
       | assignment? NEWLINE    #StatAssignment
       ;

assignment: ID '=' expr;

expr :  '(' expr ')'                    #ExprParent
        | op=('-'|'+') expr             #ExprSignal
        | expr op=('*'|'/'|'%') expr    #ExprMultDivMod
        | expr op=('+'|'-') expr        #ExprAddSub
        | ID                            #ExprId
        | Number                        #ExprInteger
        ;

ID : [a-zA-Z_]+;
Number : [0-9]+;
NEWLINE : '\r'? '\n';
WS : [ \t]+ -> skip ; 
COMMENT : '#' .*? '\n' -> skip;
