
/*

prime_xy(+X, +Y, +List)
  is true if List unify with a list that contains
  prime numbers between X and Y.
  
  prime_xy(1, 8, R).
  R = [1,2,3,5,7]

*/
prime_xy(X,Y, []):- X > Y.
prime_xy(X, Y, [X|R]):- X2 is X+1, prime(X), prime_xy(X2, Y, R).
prime_xy(X, Y, [R]):- X2 is X+1, \+ prime(X), prime_xy(X2, Y, R).
 

/* The use of Range is trick

factors_list(+N, +Range, -List)
  is true if List unify with a list that contains all
  factors of N in the range [1, Range]
  
  factors_list(8, 8, R).
  R=[1, 2, 4, 8]
  
  
  factors_list(8, 1, R) -> Range [1,1], Set [1], R=[1]
  
  factors_list(8, 8, R) -> Range [1,8] -> Set [1,2,3,4,5,6,7,8], R=[1,2,4,8]
  
  factors_list(8, 7, R) -> Range [1,7] -> Set [1,2,3,4,5,6,7], R=[1,2,4]

*/

factors_list(_, 1, [1]).

factors_list(N, Range, [Range|R]):- Range > 1, Range2 is Range - 1, 
  0 is mod(N, Range),
  factors_list(N, Range2, R).

factors_list(N, Range, R):- Range > 1, Range2 is Range - 1, 
  Module is mod(N, Range), Module \= 0,
  factors_list(N, Range2, R).  
  
/*
prime(+N)
  is true if N is a prime number. N only have two factors 1 and itself.
*/
prime(N):- factors_list(N, N, [N,1]).

  
  




 