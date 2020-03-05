Complete the template prolog files (task1, task2, and task3).
Edit this README file to mention the following: 

(a) how to run your program, 
This program requires [SWI-Prolog](https://www.swi-prolog.org/Download.html) to run.
(b) input (if any), 
Once installed, Click on File->Consult-> Choose filename.pl 
(c) Sample test results for each of the tasks.



Task 1 : 5 querries whereas two querries will involve facts(plays), two querries involve rules(friends), and one query doesnt have an answer.
 
  - ?- plays(tammy,forward).
true.
  - ?- plays(kante,central).
true.
  - ?- friends(tammy,willian).
true.
  - ?- friends(tammy,kante).
false.
  - ?- eat(tammy,chicken).
true.

Task 2 : Finds the smallest element from a list of integers

  - ?- smallest([14,-30,25,89,29],Min).
Min = -30 ;
false.

  - ?- smallest([11,42,94,1,45],Min).
Min = 1 ;
false.

Task 3 : Tells whether there is a ﬂight route from one town A to another town B

  - ?- hasConn(philadelphia,chicago).
true .

  - ?- hasConn(chicago,toledo).
false.

  - ?- hasConn(toledo,chicago).
true .

  - ?- hasConn(toledo,What).
What = detroit ;
What = sanFrancisco ;
What = columbus ;
What = philadelphia ;
What = newOrleans ;
What = chicago .