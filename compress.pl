/*
compress(+List, -Result)
Compresses a list by grouping consecutive identical elements together and counting their occurrences.
The compressed list is represented as a list of tuples, where each tuple contains an element and its count.
*/

more_times(List, ):- msort(List, ListSort),
    compress(List, ListComp),



%higher_n

higher_n([(Elem, N)|Tail], ):=

% Base case: an empty list is compressed to an empty list.
compress([],[]).

% Base case: a list with a single element is compressed to a list with a single tuple, where the element is paired with the number 1.
compress([SingleElem], [(SingleElem,1)]).

% Recursive case: if the first two elements of the list are identical, add 1 to the count of the first element in the result.
compress([FirstElem, FirstElem|RestOfList], [(Elem,NewCount)|CompressedRest]):-
    compress([FirstElem|RestOfList], [(Elem,OldCount)|CompressedRest]),
    NewCount is OldCount + 1.

% Recursive case: if the first two elements of the list are different, add a tuple to the result where the first element is paired with the number 1.
compress([FirstElem, SecondElem|RestOfList], [(FirstElem, 1)|CompressedRest]):- FirstElem \= SecondElem,
    compress([SecondElem|RestOfList], CompressedRest).