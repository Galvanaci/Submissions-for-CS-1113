module listaTest

import lista
import nat

la: list nat
la = nil

lb: list nat
lb = cons O nil

lc: list nat
lc = cons (S O) (cons (S (S O)) nil)

ld: list nat
ld = cons (S O) (cons (S (S O)) (cons (S (S (S O))) nil))

lengthla: nat
lengthla = length la

lengthld: nat
lengthld = length ld
---expects 3

lengthlb: nat
lengthlb = length lb
--expects 1

appendlcld: list nat
appendlcld = append lc ld
--expects (1, 2, 1, 2, 3, nil)

appendlald: list nat
appendlald = append la ld
-- expects (1, 2, 3, nil)



