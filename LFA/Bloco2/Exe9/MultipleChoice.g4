grammar MultipleChoice;

program: lines* EOF;

lines: line? NEWLINE;

line: ID '(' STRING ') {' #lineQuestion
    | answers          #lineAnswer
    | '}'             #lineEnd
    ;

answers: '  ' STRING ':' Value ;


ID : [a-zA-Z0-9.]+;
STRING: '"' (ESC | .)*? '"';
fragment ESC: '\\"' | '\\\\'; 
Value : [0-9]+ ';'; // Isto é bugado não da para passar para onde diz answers o ;
NEWLINE : '\r'? '\n';
WS : [ \t]+ -> skip ; 
COMMENT :'\n'? '#' .*? '\n' -> skip; 

