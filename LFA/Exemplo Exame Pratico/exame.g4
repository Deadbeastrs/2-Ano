grammar exame;

program: stat* EOF;

stat: var 
    | assign
    | print 
    ;

assign: ID ':' 'input(' concat ')';

var: ID ':' concat;

print: 'print' (sub | concat);

sub: '(' concat '/' (sub|concat) '/' concat ')';

concat : concat '+' concat | (STRING|ID);

STRING: '"' .*? '"'; 
ID: [a-zA-Z0-9]+;
WS: [ \t\r\n] -> skip;
LINE_COMMENT: '//' .*? '\n' -> skip;