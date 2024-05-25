% Base case: An empty list of candidates has no anagrams.
anagram(_, [], []).

% Recursive case: If the current candidate is an anagram, add it to the results.
anagram(Word, [Candidate|RemainingCandidates], [Candidate|Anagrams]) :-
    is_anagram(Word, Candidate),       % Check if the words are anagrams.
    anagram(Word, RemainingCandidates, Anagrams).  % Recurse with the remaining candidates.

% Recursive case: If the current candidate isn't an anagram, skip it.
anagram(Word, [_|RemainingCandidates], Anagrams) :-
    anagram(Word, RemainingCandidates, Anagrams).  % Recurse with the remaining candidates.

% Check if two words are anagrams.
is_anagram(Word, Candidate) :-
    canonical_form(Word, CanonicalForm),       % Convert both words to a canonical form
    canonical_form(Candidate, CanonicalForm).   % and compare them.


% Helper predicate to convert a word to its canonical form.
canonical_form(Word, CanonicalForm) :-
    string_lower(Word, LowerWord),       % Convert to lowercase.
    string_chars(LowerWord, Chars),     % Split into a list of characters.
    sort(Chars, SortedChars),            % Sort the characters.
    string_chars(CanonicalForm, SortedChars).  % Reconstruct the sorted string.
