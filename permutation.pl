/*

*/


permutation([], []).

permutation([Head|Tail], R2):- permutation(Tail, R), 
  append(L1, L2, R),  append(L1, [Head|L2], R2).
  