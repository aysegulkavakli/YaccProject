install:
	lex myprogram.l
	gcc lex.yy.c -o myprogram.gul -lfl
remove:
	rm lex.yy.c
	rm myprogram.gul