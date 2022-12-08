%Chapter 4

% 4.1 Lists
 
% we want to extract only the tail of this internal list 
%  and we are not interested in any other infornation 
%[_,_,[_|X]|_] = [[],  dead(z),  [2,  [b,  c]],  [],  Z].


% 4.2 Member 
% an object X is a member of a list if it is the head of that list. 
% an object X is a member of a list if it is a member of the tail of that list.
member(X,[X|_]).					%fact
member(X,[_|T]):- member(X,T).		%rule
% the recursion does not go on forever due to the [] empty list 

% 4.3 Recursing down the list
a2b([], []).
a2b([a|Ta], [b|Tb]) :- a2b(Ta, Tb).

% the a2b predicate should succeed if 
% 	its first argument is a list with head a,
% 	its second argument is a list with head b,
%	and a2b/2 succeeds on the two tails.

% 4 Esercises 

% Exercise 4.3
% second(X,List). 
% checks if X is a 2nd member of a list
second(X, [_, X|_]).
 
% Exercise 4.4
% a predicate swap12(List1,List2) which checks whether List1 is identical to List2 , 
% except that the first two elements are exchanged.


swap12([A, B|T], [B, A|T]).

% Exercise 4.5
   tran(eins,one).
   tran(zwei,two).
   tran(drei,three).
   tran(vier,four).
   tran(fuenf,five).
   tran(sechs,six).
   tran(sieben,seven).
   tran(acht,eight).
   tran(neun,nine).          

listtran([], []).
listtran([X|T0], [Y|T1]):- tran(X, Y), listtran(T0, T1).

% Exercise 4.6
twice([], []).
twice([H|T], [H,H|T1]):- twice(T,T1). 

% Practice session 
combine1([], [], []).
combine1([H1|T1], [H2|T2], [H1, H2|T]):- combine1(T1, T2, T).

combine2([], [], []).
combine2([H1|T1], [H2|T2], [[H1, H2]|T]):- combine2(T1, T2, T).

combine3([], [], []).
combine3([H1|T1], [H2|T2], [j(H1, H2)|T]):- combine3(T1, T2, T).
