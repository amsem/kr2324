/*
path(+Graph, +Start, +End, +Visited, -Path)

Graph representation:
graph(VertexList, EdgeList)


1--------2--------3--------4
          \     /
           \   /
            \ /
             5  

            g((1,2,3,4,5), [e(1,2), e(2,3), e(3,4), e(2,5), e(5,3)])


            directed graph 1--->2   1 is connected with 2
                            2 is not connected with 1


            undirected graph 1-------2 1 is connected with 2
                                    and 2 is connected with 1
It is possible to represent path and visited in two ways.

Path as 
- list of points (vertex)or
- list of lines (edges)

Visted 
- list of points (vertex)
- list of lines  (edges)

 path represented with point and visited also with points in a directed graph 
 */

connected(Start, End, g(_, Lines)):- member(e(Start,End), Lines).


path(_, Start, Start, _, [Start]).

path(g(Dots, Lines), Start, End, Visited, [Start|Path]):-
    connected(Start, Tmp, g(Dots, Lines)),
    \+ member(Tmp, Visited),
    path(g(Dots, Lines), Tmp, End, [Tmp|Visited],Path).

graph1(
g((1,2,3,4,5), [e(1,2), e(2,3), e(3,4), e(2,5), e(5,3)])
    ).