:-use_module(library(chr)).
:-chr_constraint c/1.
c(hello) <=> writeln(hello).
c(world) <=> writeln(world).