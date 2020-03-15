hasDirectConn(newOrleans, chicago).
hasDirectConn(philadelphia, newOrleans).
hasDirectConn(columbus, philadelphia).
hasDirectConn(sanFrancisco, columbus).
hasDirectConn(detroit, sanFrancisco).
hasDirectConn(toledo, detroit).
hasDirectConn(houston, sanFrancisco).



findRoute(X,Y) :- hasDirectConn(X,Y), write(Y), write('<--'), write(X).
findRoute(X,Y) :- hasDirectConn(X,Z), findRoute(Z,Y), write('<---'), write(X).