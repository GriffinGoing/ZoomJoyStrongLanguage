%{
	#include "zoomjoystrong.tab.h"
	#include <stdlib.h>
%}

%option noyywrap


%%

;		{ return END_STATEMENT;	}
point		{ return POINT; }
line		{ return LINE;	}
circle		{ return CIRCLE; 	}
rectangle	{ return RECTANGLE; }
set_color	{ return SET_COLOR; }
[0-9]+		{ yylval.i = atoi(yytext); return INT;  }
[0-9]+.[0-9]+	{ yylval.k = atoi(yytext); return FLOAT;        }
<<EOF>>		{ return END; }
[ \t\n]	;


%%
