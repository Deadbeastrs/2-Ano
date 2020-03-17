grammar MultipleChoice;

program: lines* EOF;

lines: line? NEWLINE;

line:ID '(' STRING ')' '{' #lineQuestion
    | answers               #lineAnswer 
    | '}'                   #lineEnd
    ;
answers: '  ' STRING ':' Value ';' ; // para aqui

Value : [0-9]+; // Isto é bugado não da para passar para onde diz answers o ;
ID : [a-zA-Z0-9.]+;
STRING: '"' (ESC | .)*? '"';
fragment ESC: '\\"' | '\\\\'; 
NEWLINE : '\r'? '\n';
WS : [ \t]+ -> skip ; 
COMMENT :'\n'? '#' .*? '\n' -> skip; 

