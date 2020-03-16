grammar Calculator;

program: commands* EOF;

commands: print?   ';' NEWLINE  #ComPrint 
        | assign?  ';' NEWLINE  #ComAssign
        | equation?';' NEWLINE  #ComEquation
        ;

print: 'print' equation;

assign: equation '->' Var;

equation:'(' equation ')^' Number       #EqElev
        | '(' equation ')'              #EqParent
        | equation op=('*'|':') equation#EqMult
        | op=('+'|'-') equation         #EqSignal
        | equation op=('+'|'-') equation#EqSumSub
        | 'reduce' equation             #EqReduction
        | Number '/' Number             #EqFraction
        | Number                        #EqNumber
        | Var                           #EqVar
        ;

Var : [a-zA-Z_]+;
Number : [0-9]+;
NEWLINE : '\r'? '\n';
WS : [ \t]+ -> skip ; 
COMMENT : '#' .*? '\n' -> skip;

