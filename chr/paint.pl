:- use_module(library(chr)).
:- chr_constraint red,blue,purple,yellow,orange,green.
red, blue <=> purple.
red, yellow <=> orange.
blue, yellow <=> green.