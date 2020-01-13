:- use_module(library(chr)).
:- chr_constraint piggy/1.
piggy(I),piggy(J)<=>K is I +J,piggy(K).

:-chr_constraint value/1.
value(I), value(J) <=> append(I,J,K), value(K).