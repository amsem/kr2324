
/*
create_bt(+List, -BTree)
  is true if BTree unify with a binary tree with all labels in List.
  
*/

create_bt([], nil).
create_bt([H|List], t(H, T1, T2)):- length(List, L), L2 is L div 2,
                     length(Sub1, L2), 
					 append(Sub1, Sub2, List),
					 create_bt(Sub1,T1),
					 create_bt(Sub2, T2).