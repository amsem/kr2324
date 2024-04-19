preorder(nil, []).
preorder(node(Left, Label, Right), Result) :-
    preorder(Left, LeftList),
    preorder(Right, RightList),
    append([Label|LeftList],RightList, Result).

inorder(nil, []).
inorder(node(Left, Label, Right), Result) :-
    inorder(Left, LeftList),
    inorder(Right, RightList),
    append([LeftList,Label],RightList, Result).

postorder(nil, []).
postorder(node(Left, Label, Right), Result) :-
    postorder(Left, LeftList),
    postorder(Right, RightList),
    append([LeftList, RightList], Label, Result).

create_tree(node(Left, Label, Right), [Head|TailP], Inorder):-
    append(LeftI, [HeadP|RightI], Inorder),
    length(LeftI, L),
    length(LeftP, L),
    append(LeftP, RightP, TailP),
    create_tree(Left, LeftP, LeftI),
    create_tree(Right, RightP, RightI).

     
