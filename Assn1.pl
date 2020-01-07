% question 1 
assert(db1(a)).
assert(db1(b)).
assert(db2(a)).
assert(db2(c)).
assert(db2(b)).
remove(X):-
  retractall(db1(X)).
%question 2
remove(X):-
  retract(db1(a)).

%question 3
assert(db1(func(a))).
assert(db1(func(b))).
assert(db2(func(a))).
assert(db2(func(c))).
assert(db2(func(b))).
remove(X):-
  retract(db2(a)).

%question 4
% retract(X) Removes fact or clause X from the
% ndatabase.
% retractall(X) Removes all facts or clauses from the
% database for which the head unifies with X.

%question 6
max(W,X,Y,Z):-
      W>=X
         ->(W>=Y -> (W>=Z ->write(W) ; write(Z))
           ; Y>=Z ->(write(Y);write(Z))
          );
      X>=Y
         ->(X>=Z->write(X);write(Z))
        ;
        Y>=Z ->write(Y); write(Z).
