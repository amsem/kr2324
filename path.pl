/*
path(g(+Vertex, +Edges), +Start, +End, +Visited, -Path)

it is true if a path unify with the list of vertex or edges that represent 
the path to go from a start point to endpoint without visiting 2 times 
the same edge or vertex in graph G(Vertex, Edges).


*/

connected(g(_, Edges), Start, End):- member((Start, End), Edges).

path(_, Start, Start, _, [Start]).


path(g(_, Edge), Start, End, Visited, [Start|Path]):-
    connected(g(_, Edge), Start, TMP),
    \+ member((Start,TMP), Visited),
    path(g(_, Edge), TMP, End, [(Start,TMP),(Start,TMP)|Visited], Path).

graph1(
          g((a,b,c,d,e), [(a),(),()])
          ).