/*

balanced(+BinaryTree)
  is true if BinaryTree is balanced. For all nodes
  the differece between left tree deep and right tree
  deep is maximum 1 is absolute value.
  
         1                          1             1
    	/ \                        / \           / \
       2   5                      2   3         2   3
      /     \                    /
     3       6                  4
    /         \
   4	       7
   
   Diff = 4 - 1 = 3           Diff = For all nodes   
                                     Deep left - Deep right 
                                     Max 1 in absolute value.
									 																		 
*/

tree1(
t(1, t(2, t(3, t(4, nil, nil), nil), nil), t(5, nil, t(6, nil, t(7,nil,nil))))
).

tree2(
t(1, t(2, t(4, nil, nil), nil), t(3, nil,nil))
).

tree3(
t(1, t(2, nil, nil), t(3, nil,nil))
).

balanced(nil).
balanced(t(_, Left, Right)):-
deep(Left, LD),
deep(Right, RD),
Dif is LD - RD, 1 >= abs(Dif),
balanced(Left), balanced(Right).



/*
deep(+BinaryTree, -N)
it is true if N unify with the maximum deep of BinaryTree.

*/

deep(nil, 0).
deep(t(_, Left, Right), Deep):-
deep(Left, DL),
deep(Right, DR),
Deep is 1 + max(DL, DR).





                                   