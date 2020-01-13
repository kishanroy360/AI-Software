:- use_module(library(chr)).
:- chr_constraint generate/1, value/1.
generate(0) <=> true.
generate(N)<=> N>0 | value(N), M is N-1, generate(M).
value(I), value(J) <=> K is I+J, value(K).