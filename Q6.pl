max(W,X,Y,Z):-
      W>=X
         ->(W>=Y -> (W>=Z ->write(W) ; write(Z))
           ; Y>=Z ->(write(Y);write(Z))
          );
      X>=Y
         ->(X>=Z->write(X);write(Z))
        ;
        Y>=Z ->write(Y); write(Z).

maxlist([X],X).
maxlist([A,B|Tail],Max):-
      maxlist([B|Tail],Max1),
      max(A,Max1,Max).
max(X,Y,Y):- Y>X.
max(X,Y,X):- X>=Y.