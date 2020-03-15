Task 1

?- findRoute(houston,columbus).
columbus<--sanFrancisco<---houston
true .

?- findRoute(detroit,chicago).
chicago<--newOrleans<---philadelphia<---columbus<---sanFrancisco<---detroit
true .

?- findRoute(columbus,houston).
false.

Task 2

?- myDelete(b,[b,c,d,b,c,b],Result).
Result = [c, d, c] .

?- writeToFile([b,c,d,b,c,b],File).
give a filename
|: 'test.txt'.

File = 'test.txt' .

?- myDelete(l,[j,k,q],Result).
Result = [j, k, q].

?- myDelete(p,[p,c,l,q,c,b],Result).
Result = [c, l, q, c, b] .

?- writeToFile([p,c,l,q,c,b],File).
give a filename
|: 'test2.txt'.

File = 'test2.txt' .



Task 3

?- sudoku([_,2,7,_,5,_,3,9,6,9,6,5,3,2,7,1,4,8,3,4,1,6,8,9,7,5,2,5,9,3,4,6,8,2,7,1,4,7,2,5,1,3,6,_,9,6,1,8,9,7,2,4,3,5,7,8,6,2,3,5,9,1,4,1,5,4,7,9,6,_,2,3,2,3,9,8,4,1,5,6,7], Solution).
Solution = [8, 2, 7, 1, 5, 4, 3, 9, 6|...] .

?- sudoku([_,2,7,_,5,_,3,9,6,9,6,5,3,2,7,1,4,8,3,4,1,6,8,9,7,5,2,5,9,3,4,6,8,2,7,1,4,7,2,5,1,3,6,_,9,6,1,8,9,7,2,4,3,5,7,8,6,2,3,5,9,1,4,1,5,4,7,9,6,_,2,3,2,3,9,_,4,1,5,_,7], Solution).
Solution = [8, 2, 7, 1, 5, 4, 3, 9, 6|...] .

?- sudoku([_,2,7,1,5,4,3,9,6,9,6,5,3,2,7,1,4,8,3,4,1,6,8,9,7,5,2,5,9,3,4,6,8,2,7,1,4,7,2,5,1,3,6,8,9,6,1,8,9,7,2,4,3,5,7,8,6,2,3,5,9,1,4,1,5,4,7,9,6,8,2,3,2,3,9,8,4,1,5,6,7], Solution).
Solution = [8, 2, 7, 1, 5, 4, 3, 9, 6|...] .

?- sudoku([_,_,_,_,5,4,3,9,6,9,6,5,3,2,7,1,4,8,3,4,1,6,8,9,7,5,2,5,9,3,4,6,8,2,7,1,4,7,2,5,1,3,6,8,9,6,1,8,9,7,2,4,3,5,7,8,6,2,3,5,9,1,4,1,5,4,7,9,6,8,2,3,2,3,9,8,4,1,5,6,7], Solution).
Solution = [8, 2, 7, 1, 5, 4, 3, 9, 6|...] .


