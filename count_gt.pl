/*


*/

count_tree(t(_, ListTrees), R):-
    count_tree_list(ListTrees, RL), R is RL + 1.
  
  count_tree_list([], 0).
  count_tree_list([Head|Tail], R):-
    count_tree(Head, RH),
    count_tree_list(Tail, RT), R is RH + RT.
    
  tree1(  
  
    t(1, [t(2, [t(5,[t(9,[]), t(10,[])]), t(6,[])]), t(3, []), t(4, [t(7,[t(11,[]),t(12,[])]), t(8,[])])])
  
  ). 