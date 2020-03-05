/* here you write your code for Task 1 */


plays(willian, forward).
plays(odoi, forward).
plays(kovacic, central).
plays(tammy, forward).
plays(kante, central).
plays(mount, central).
food_type(sausage, meat).
food_type(chicken, meat).
flavor(yeasty, cheese).
flavor(savory, cheese).

friends(X,Y) :- plays(X,Z), plays(Y,Z), \+(X=Y).
eat(X,Y) :- plays(X,Z), food_type(Y,W).
use(X,Y) :- plays(X,Z), flavor(Y,W).
