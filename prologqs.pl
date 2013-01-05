
% Question 9

/*
% A Pythagorean triplet is a set of three natural numbers, a  b  c, for which,

% a2 + b2 = c2
% For example, 32 + 42 = 9 + 16 = 25 = 52.

% There exists exactly one Pythagorean triplet for which a + b + c = 1000.
% Find the product abc.
*/

product(N,Result) :- pythagorean(A,B,C,N), !, Result is A*B*C.

pythagorean(A,B,C,N) :-
   between(1,997,A),
   between(1,997,B),
   between(1,997,C),
   N =:= A + B + C,
   C*C =:= A*A + B*B,
   A < B,
   B < C.
   