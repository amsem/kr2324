/*
blanced(+BinaryTree)
    is true if BinaryTree is balanced. For all nodes
    the diffrence between -en left tree deep and right tree
    deep is maximum 1 in absolute value.

          1                                                 1   
         /                                                 / \  
        2                                                 2   4 
      /                                                  /          
     3                                                  3
    /
   4
    Diff = 4 - 1 = 3                           Diff = For all nodes
                                               Deep left - Deep right
                                               Max 1 in absolute value. 
*/

balanced(nil).
balanced(t(left,_,right)):-
    depth(left, DL),
    depth(right, DR),
    Diff is DL- DR,
    1 =< abs(Diff),
    balanced(left),
    balanced(right).

depth(nil,0).
depth(node(left, _, right), R):-    
    depth(left,RL), depth(right, RR), R is max(RL,RR).