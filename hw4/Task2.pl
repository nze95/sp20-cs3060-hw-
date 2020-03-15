myDelete(_,[],[]).
myDelete(A,[A|Tail],NewTail):- myDelete(A,Tail, NewTail).
myDelete(A, [Head|Tail], [Head|NewTail]):- myDelete(A, Tail, NewTail), A\==Head.

writeToFile([Head|Tail],File):- write('give a filename'), nl, read(File), open(File,write,Stream), myDelete(A, [Head|Tail], [Head|NewTail]), write(Stream, [Head|NewTail]), close(Stream).