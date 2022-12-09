accLen([H|T], A, L):- Anew is A+1, accLen(T, Anew, L).
accLen([], A, A).

len(List, Length):- accLen(List, 0, Length).
