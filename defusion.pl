/*

1. Define the state
		What is the minimum information I have to put inside the state
        to make a picture of the problem.
	state(L5, L3)
    
    L5  is the number of liters in a 5 liters bottle
    L3 is the number of liters in a 3 liters bottle
    
2. Define the initial state and the final state.
	Initial state = state(0, 0).
    
    Final state = state(4, _).

3. Define the movements


	mov(Name, StateBefore, StateAfter)
    
*/



mov(put3to5, state(L5, L3), state(N5, 0)):-
    N5 is L5 + L3, 
    N5 =< 5.

mov(put3to5, state(L5, L3), state(5, N3)):-
    N5 is L5 + L3, 
    N5 > 5,
    N3 is N5 - 5.


mov(put5to3, state(L5, L3), state(0, N3)):-
    N3 is L5 + L3, 
    N3 =< 3.

mov(put3to5, state(L5, L3), state(N5, 0)):-
    N3 is L5 + L3, 
    N3 > 3,
    N5 is N3 - 3.
mov(full3, state(L5, _), state(L5, 3)).
mov(full5, state(_, L3), state(5, L3)).
mov(empty5, state(_, L3), state(0, L3)).
mov(empty3, state(L5, _), state(L5, 0)).
/*
% Path to the solution
	path(+Initial, +Final, +Visited, -SolutionPath).
	it is true if SolutionPath unify with the list of 
    movements names to go from Ini state to Fin state
    without repeat state.
*/

path(Ini, Ini, _, []).

path(Ini, Fin, Visited, [Name|Path]):-
    mov(Name, Ini, TMP),
    \+ member(TMP, Visited),
    path(TMP, Fin, [TMP|Visited], Path).