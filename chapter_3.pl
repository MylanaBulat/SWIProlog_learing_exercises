%Chapter 3

%Example 1: Eating
   is_digesting(X,Y)  :-  just_ate(X,Y).	%base clause 
   is_digesting(X,Y)  :-
                   just_ate(X,Z),
                   is_digesting(Z,Y).
   
   just_ate(mosquito,blood(john)).
   just_ate(frog,mosquito).
   just_ate(stork,frog).

% when you write a recursive predicate, 
% it should always have at least two clauses: 
% 	a base clause (the clause that stops the recursion at some point), 
% 	and one that contains the recursion.

p  :-  p. % infinite loop

% Example 2: Descendant
   child(anne,bridget).
   child(bridget,caroline).
   child(caroline,donna).
   child(donna,emily).

descend(X, Y):- child(X, Y).
descend(X, Y):- child(X, Z), child(Z, Y).
%limited: only defines the concept of descendant-of for two generations or less

descend2(X, Y):- child(X, Y).
descend2(X, Y):- child(X, Z), descend2(Z, Y).
% fixes the problem of the previous Knowledge Base

% Example 3: Successor
numeral(0). 
numeral(succ(X)):- numeral(X). 

% Example 4: Addition
%   ?-  add(succ(succ(0)),succ(succ(0)),
%                 succ(succ(succ(succ(0))))).

add(0, Y, Y). 
add(succ(X), Y, succ(Z)) :- add(X, Y, Z).

% takes in two numbers and returns the bigger one 
greater(0, B, B).
greater(A, 0, A).
greater(succ(A), succ(B), succ(C)):- greater(A, B, C).

%3.3 Exercises
%Exercise  3.1
   descend3(X,Y)  :-  child(X,Y).
   descend3(X,Y)  :-  descend3(X,Z), descend3(Z,Y).
% Yes, this is problematic. 
% the program executes and finds all necessary children, 
% but when it gets to the last possible descendent choice 
% it strats looping, because of the missing base case 
% it exits with a 'Stack limit exceeded' error 


%Exercise  3.2
directlyIn(natasha, irina).
directlyIn(olga, natasha).
directlyIn(katarina, olga).

in(X, Y):- directlyIn(X, Y).
in(X, Y):- in(X,Z), directlyIn(Z, Y).

%Exercise  3.3
   directTrain(saarbruecken,dudweiler).
   directTrain(forbach,saarbruecken).
   directTrain(freyming,forbach).
   directTrain(stAvold,freyming).
   directTrain(fahlquemont,stAvold).
   directTrain(metz,fahlquemont).
   directTrain(nancy,metz).


travelFromTo(X, Y):- directTrain(X, Y). 
travelFromTo(X, Y):- directTrain(X, Z), travelFromTo(Z, Y).

%Exercise  3.4

%numeral(0).
%numeral(succ(X)):- numeral(X).

greater_than(succ(_), 0).
greater_than(succ(X), succ(Y)):- greater_than(X, Y).

%Our base case: all numbers are positive -> last smallest number = 0
%  -> any number not equal to 0 is greater than 0 

%Exercise  3.5
swap(leaf(X), leaf(X)).
swap(tree(A, B), tree(C, D)):- swap(C,B),
     						  swap(A,D).
