% Question 2
fn([]).
fn([A|B]):-write(A),write(' '),fn(B).

%Question 3
%Post-Recursion
count([],0).
count([_|B],X):- count(B,N1), X is N1+1.
%Pre-Recursion
count1([],M,M).
count1([H|T],Y,L):-M is C+1,count1(T,Y,M).
count1(L,X):-count1(L,X,0).

%Question 4
sum([],0).
sum([A|B],X):- sum(B,N1), X is N1+A.

%Question 5
member(A,[A|_]).
member(X,[_|Tail]) :-member(X,Tail).

%Question 6
last([A|[]]) :- format('~w ~s last element',[A,"is the "]).
last([A|Tail]) :- last(Tail).

%Question 7
duplicate([],[]).
duplicate([H|T],[H,H|Y]) :- duplicate(T,Y).

%Question 8
duplicate_ntimes(L,2,L2):- append(L,L,L2).
duplicate_ntimes(L,X,NewL):- Y is X-1, duplicate_ntimes(L,Y,New),write(New), append(New,L,NewL).

%Question 9
addz([],X,X).
 addz([H|T],X,[H|L2]):-
      addz(T,X,L2).

%Question 10
adda(Y,X,[X|Y]).

%Question 11
addmi([],_,NL1,Len,Len,NL1).
addmi([H|T],X,NL,N,Len,NL3):-
		(N is div(Len,2)-1 -> append(NL,[H,X],NL1);append(NL,[H],NL1))
			,M is N+1,addmi(T,X,NL1,M,Len,NL3).
addm(L,X,NL1):-
	proper_length(L,Len),addmi(L,X,NL,0,Len,NL1).
	
%Question 12
dropa([],_,NL2,NL2,_).
dropa([H|T],N,NL1,NL,C):-
    M is C+1, (M is N -> dropa(T,N,NL1,NL,0);(append(NL1,[H],NL2),dropa(T,N,NL2,NL,M))).
drop(L,N,NL):-
	dropa(L,N,NL1,NL,0).

%Question 13
fn([],NL2,NL2).
fn([H|T],NL1,NL):-
	member(H,NL1)->fn(T,NL1,NL);(append(NL1,[H],NL2),fn(T,NL2,NL)).

remdups(L,NL):-
  fn(L,NL1,NL).

%Question 14
sum(A,B,X):- X is A+B.
maplist(sum,[1,2,3],[4,5,6],X).
X = [5, 7, 9].

%Question 15
%In case of list of lists.
%Question 15.2
print([]).
print([[H|Y]|T]):-print([H|Y]), print(T).
print([H|T]):-write(H),write(' '),print(T).

%Question 15.3
count([],0).
count([[]],0).
count([[H|Y]|T],X):-count([H|Y],N1),count(T,N2),X is N1+N2.
count([H|T],X):-count([T],N1),X is N1+1.

%Question 15.4
sum([],0).
sum([[]],0).
sum([[H|Y]|T],X):-sum([H|Y],N1),sum(T,N2),X is N1+N2.
sum([H|T],X):-sum([T],N1),X is N1+H.

%Question 15.5
member1(H,[H|_]).
member1(H,[[H|_]]).
member1(X,[[H|T]|Tail]):-member1(X,[H|T]);member1(X,Tail).
member1(X,[_|Tail]):-member1(X,Tail).

%Question 15.6
last([[H|T]|[]]):- last(T).
last([H|[]]):- write(H).
last([[H|[]]|[]]):-write(H).
last([[H|T]|Tail]):-last(Tail).
last([H|T]):-last(T).

%Question 15.7
duplicate([],[]).
duplicate([[H|T]|Tail],Y):-duplicate([H|T],NL1),duplicate(Tail,NL2),append(NL1,NL2,Y).
duplicate([H|T],[H,H|Y]):-duplicate(T,Y).

%Question 15.8
duplicate_ntimes(L,2,L2):- append(L,L,L2).
duplicate_ntimes([[H|T]|Tail],X,NewL):-Y is X-1,duplicate_ntimes([H|T],Y,NewL1),duplicate_ntimes(Tail,Y,NewL2), append(NewL1,NewL2,NewL).
duplicate_ntimes(L,X,NewL):- Y is X-1, duplicate_ntimes(L,Y,New), append(New,L,NewL).
%2nd approach


%Question 15.9
addz([],X,X).
 addz([H|T],X,[H|L2]):-
      addz(T,X,L2).

%Question 15.10
adda(Y,X,[X|Y]).

%Question 15.11
addmi([],_,NL1,Len,Len,NL1).
addmi([H|T],X,NL,N,Len,NL3):-
		(N is div(Len,2)-1 -> append(NL,[H,X],NL1);append(NL,[H],NL1))
			,M is N+1,addmi(T,X,NL1,M,Len,NL3).
addm(L,X,NL1):-
	proper_length(L,Len),addmi(L,X,NL,0,Len,NL1).
	
%Question 15.12
dropa([],_,NL2,NL2,_).
dropa([H|T],N,NL1,NL,C):-
    M is C+1, (M is N -> dropa(T,N,NL1,NL,0);(append(NL1,[H],NL2),dropa(T,N,NL2,NL,M))).
drop(L,N,NL):-
	dropa(L,N,NL1,NL,0).

%Question 15.13
fn([],NL2,NL2).
fn([H|T],NL1,NL):-
	member(H,NL1)->fn(T,NL1,NL);(append(NL1,[H],NL2),fn(T,NL2,NL)).

remdups(L,NL):-
  fn(L,NL1,NL).