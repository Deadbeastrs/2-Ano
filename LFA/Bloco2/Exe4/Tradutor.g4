grammar Tradutor;

program: stat* EOF;

stat: expr? NEWLINE; 

expr: Number '-' Word;

Number : [0-9]+;
Word : [a-zA-Z]+;
NEWLINE : '\r'? '\n';
WS : [ \t]+ -> skip ;
COMMENT : '#' .*? '\n' -> skip;