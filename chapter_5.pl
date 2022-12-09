%not tail recursive 
len([], 0).
len([H|T], L):- len(T, X), L is X+1.

%tail recursive 
accLen([_|T], A, L):- Anew is A+1, accLen(T, Anew, L).
accLen([], A, A).
leng(List, Length):- accLen(List, 0, Length).

% 1st- if the head of the list is larger than the largest value found so far.
% 2nd- if its less or equal we leave accumulator as it was.
% 3-rd when list is empty, acc = Max number.

accMax([H|T], A, Max):-
    H > A, 
    accMax(T, H, Max).

accMax([H|T], A, Max):-
    H =< A, 
    accMax(T, A, Max).   

accMax([], A, A).

maxNum(List, Max):- List = [H|T], accMax(List, H, Max).
