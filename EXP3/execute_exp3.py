import os
os.system("gnome-terminal -e 'yacc exp3yacc.y'")
os.system("gnome-terminal -e 'yacc -d exp3yacc.y'")
os.system("gnome-terminal -e 'flex lex.yy.c'")
os.system("gnome-terminal -e 'gcc lex.yy.c y.tab.c -ll'")
os.system("gnome-terminal -e './a.out'")


