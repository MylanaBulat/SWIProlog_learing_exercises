%Chapter 6
%More List:
% append/3
% prefix/2
% suffix/2
% subList/2

%append([], L, L).
%append([H|T], L2, [H|L3]):- append(T, L2, L3).
% we can use append/3 for splitting up the list in two consequting lists. 

prefix([], []).
prefix(P, L):- append(P, _, L).

suffix([], []).
suffix(S, L):- append(_, S, L).

% sublist is taking a prefix of a sufix of a list
subList(SublL, L):- suffix(Suffix, L), prefix(SublL, Suffix).

%Reversing a list
%naive reverse using append 
nrev([], []).
nrev([H|T], R):- nrev(T, RevT), append(RevT, [H], R).

%with accumulators                           
accRev([H|T], A, R):- accRev(T, [H|A], R). 
accRev([], A, A).                            
rev(L,R):-  accRev(L,[],R).
