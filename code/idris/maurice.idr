module maurice

import pair

data who = mary | maurice

lovedby: who -> who
lovedby b = maurice

p1: pair who who
p1 = mkPair mary maurice

p2: pair who who
p2 = mkPair maurice maurice
