/*
Using this representation for binary trees node(Left, Label, Right) create a predicateto count the number of nodes


*/


count(nil, 0).


count(node(left, _, right), R):-    
    count(left,RL), count(right, RR), R is RR + RL + 1.