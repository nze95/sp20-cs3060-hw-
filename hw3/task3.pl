/* here you write your code for Task 3 */

hasDirectConn(newOrleans, chicago).
hasDirectConn(philadelphia, newOrleans).
hasDirectConn(columbus, philadelphia).
hasDirectConn(sanFrancisco, columbus).
hasDirectConn(detroit, sanFrancisco).
hasDirectConn(toledo, detroit).
hasDirectConn(houston, sanFrancisco).

hasConn(X,Y):- hasDirectConn(X,Y).
hasConn(X,Y):- hasDirectConn(X,Z), hasConn(Z,Y).