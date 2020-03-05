/* here you write your code for Task 2 */

smallest([J],J).

smallest([H,I|T],Min):- smallest([I|T],NewMin), final(H,NewMin,Min).

final(H,I,H) :- H =< I.
final(H,I,I) :- I < H. 
