%Chapter 2
%the line that goes between two points that have the 
% same X coordinates is - Vertical 
vertical(line(point(X,Y),point(X,Z))).
horizontal(line(point(X,Y),point(Z, Y))).

f(a).
f(b).
   
g(a).
g(b).
   
h(b).
   
k(X)  :-  f(X),  g(X),  h(X).

%Exercise  2.2

house_elf(dobby).
witch(hermione).
witch('McGonagall').
witch(rita_skeeter).
magic(X):-  house_elf(X).
magic(X):-  wizard(X).
magic(X):-  witch(X).

wizard(harry).

% Exercise  2.3

   word(determiner,a).
   word(determiner,every).
   word(noun,criminal).
   word(noun,'big  kahuna  burger').
   word(verb,eats).
   word(verb,likes).
   
   sentence(Word1,Word2,Word3,Word4,Word5):-
         word(determiner,Word1),
         word(noun,Word2),
         word(verb,Word3),
         word(determiner,Word4),
         word(noun,Word5).


% Exercise  2.4
%%      V1  V2  V3
%%      .   .   .
%% H1 . . . . . . .
%%      .   .   .
%% H2 . . . . . . .
%%      .   .   .
%% H3 . . . . . . .
%%      .   .   .

   word(astante,  a,s,t,a,n,t,e).
   word(astoria,  a,s,t,o,r,i,a).
   word(baratto,  b,a,r,a,t,t,o).
   word(cobalto,  c,o,b,a,l,t,o).
   word(pistola,  p,i,s,t,o,l,a).
   word(statale,  s,t,a,t,a,l,e).

crossword(H1, H2, H3, V1, V2, V3) :- 
    word(V1, _, _11, _, _21, _, _31, _), 
    word(V2, _, _12, _, _22, _, _32, _),
    word(V3, _, _13, _, _23, _, _33, _),
    word(H1, _, _11, _, _12, _, _13, _),
    word(H2, _, _21, _, _22, _, _23, _),
    word(H3, _, _31, _, _32, _, _33, _).
