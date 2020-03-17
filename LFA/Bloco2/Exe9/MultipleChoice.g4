grammar MultipleChoice;

program: lines* EOF;

lines: question? NEWLINE;

question:ID '(' STRING ')' '{\n' answers+ '}'
    ;
answers: '  ' STRING ':' Value ';\n' ; 

Value : [0-9]+; 
ID : [a-zA-Z0-9.]+;
STRING: '"' (ESC | .)*? '"';
fragment ESC: '\\"' | '\\\\'; 
NEWLINE : '\r'? '\n';
WS : [ \t]+ -> skip ; 
COMMENT :'\n'? '#' .*? '\n' -> skip; 

