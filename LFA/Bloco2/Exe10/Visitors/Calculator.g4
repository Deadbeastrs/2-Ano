grammar Calculator;

program: commands* EOF;

commands: assign?   NEWLINE  #ComAssign
        | equation? NEWLINE  #ComEquation
        ;


assign: Var '=' equation;

equation: '(' equation ')'              #EqParent
        | equation op=('+'|'&'|'\\') equation#EqOp
        | '{' values+ '}'                #EqSet
        | Var                           #EqVar
        ;

values : Word ','
        | Word
        | Number ','
        | Number
        ;

Var : [A-Z]+;
Word : [a-z]+;
Number : [0-9]+;
NEWLINE : '\r'? '\n';
WS : [ \t]+ -> skip ; 
COMMENT : '--' .*? '\n' -> skip;

