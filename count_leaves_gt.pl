leaf( t(_, []) ).




count_leaves_tree(t(_, TreeList)):- TreeList \= [],
    count_leaves_tree_list(TreeList, R).
count_leaves_tree(t(_, []), 1).
count_leaves_tree_list([], 0).
count_leaves_tree_list([Head|Tail],R):-
    count_leaves_tree(Head, RH),
    count_leaves_tree(Tail, RT), R is RT + RH.