
/* Binary Trees (only two child)

     1 
	/ \ 
   2   3
   
   t(1, t(2, nil, nil), t(3, nil, nil))
   
   t(Label, Left, Right)



count_bt(+BTree, -N)
 it is true if N unify with the number of elements in BTree.
 
*/
   
count_bt(nil, 0).

count_bt(t(_, Left, Right), R):-
  count_bt(Left, LR),
  count_bt(Right, RR),
  R is LR + RR + 1.
  
tree1( t(1, t(2, nil, nil), t(3, nil, nil)) ).