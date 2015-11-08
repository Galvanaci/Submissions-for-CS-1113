module dna

import pair
import list
import bool
import ite
import nat

data base = A | T | C | G

complement_base: base -> base
complement_base A = T
complement_base T = A
complement_base C = G
complement_base G = C

complement_strand: list base -> list base
complement_strand nil = nil
complement_strand (h::t) = map complement_base (h::t)

strand1: list (pair base base) -> list base
strand1 nil = nil
strand1 (h::t) = fst h:: strand1 t

strand2: list (pair base base) -> list base
strand2 nil = nil
strand2 (h::t) = snd h:: strand2 t

complete: list base -> list (pair base base)
complete nil = nil
complete (h::t) = mkPair h (complement_base h) :: complete t

complete_pair: base -> pair base base
complete_pair a = mkPair a (complement_base a)

completed: list base -> list (pair base base)
completed nil = nil
completed (h::t) = list.map complete_pair (h::t)

isBase: base -> base -> nat
isBase A A = (S O)
isBase T T = (S O)
isBase C C = (S O)
isBase G G = (S O)
isBase _ _ = O

countBase: list base -> base -> nat
countBase nil b = O
countBase (h::t) b = list.foldr add O (map (isBase b) (h::t))
