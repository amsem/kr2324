string_reverse(S, Reversed) :-
    string_chars(S, Chars),
    reverse_string(Chars, [], ReversedC),
    string_chars(Reversed, ReversedC).



reverse_string([], Reversed, Reversed).
reverse_string([Head|Tail], X, Y):-
    reverse_string(Tail, [Head|X], Y).
