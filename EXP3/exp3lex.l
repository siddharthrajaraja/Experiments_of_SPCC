%{
#include "y.tab.h"
%}

%%
[a-zA-z]+ {return ID;}
[0-9]+ {return NUMBER;}
[\t]+ {;}
\n {return 0;}
. {return yytext[0];}
%%