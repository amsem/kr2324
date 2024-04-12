:- use_module(library(clpfd)).

pangram(Sentence):-
    string_codes(Sentence, CharList),
    check(CharList).


check(CharList).
check(X):-
    X ins 97..122,
    X ins 65..90 .
   