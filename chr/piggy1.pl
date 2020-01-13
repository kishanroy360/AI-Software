:- use_module(library(chr)).
:- chr_constraint generate/1.
:- chr_constraint value/1.
generate(N) <=> N == 0 | true.
generate(N) <=> N > 0 | value(N),M is N - 1, generate(M).