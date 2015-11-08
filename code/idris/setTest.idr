module setTest

import list
import set
import nat
import eq

s0: set nat
s0 = new_set

s1: set nat
s1 = set_insert (S O) s0

s2: set nat
s2 = set_insert (S O) s1

s3: set nat
s3 = set_insert (S (S O)) s2

MM: list nat
MM = (O::(S O)::(S (S O))::nil)

setMM: set nat
setMM = mkSet (MM)

NN: list nat
NN = ((S O):: nil)

setNN: set nat
setNN = mkSet (NN)

OO: list nat
OO = (O::(S O)::(S O)::(S (S O))::nil)

setOO: set nat
setOO = mkSet (OO)

QQ: list nat
QQ = (O::(S O)::(S (S O))::nil)

setQQ: set nat
setQQ = mkSet (QQ)

PP: list nat
PP = (O::(S O)::nil)

setPP: set nat
setPP = mkSet (PP)

RR: list nat
RR = ((S (S (S O)))::(S (S (S (S O))))::nil)

setRR: set nat
setRR = mkSet (RR)

eqlQQPP: bool
eqlQQPP = eql QQ PP

eqlsetQQPP: bool
eqlsetQQPP = eql setQQ setPP

eqlsetMMQQ: bool
eqlsetMMQQ = eql setMM setQQ

eql_setQQPP: bool
eql_setQQPP = eql_set setQQ setPP

eql_setMMQQ: bool
eql_setMMQQ = eql_set setMM setQQ

sameQQPP: bool
sameQQPP = same_elements QQ PP
--expects false, PP is missing one of the members of QQ

sameMMQQ: bool
sameMMQQ = same_elements MM QQ
--expects true, same set

sameMMRR: bool
sameMMRR = same_elements MM RR
--expects false, neither have any members of the other

sameNNMM: bool
sameNNMM = same_elements NN MM
--expect false, NN is missing first and third member of MM

sameOOQQ: bool
sameOOQQ = same_elements OO QQ
--expect true, OO has one more member but is not a different identity
  --than QQ's members
eqlsetOOQQ: bool
eqlsetOOQQ = eql setOO setQQ
