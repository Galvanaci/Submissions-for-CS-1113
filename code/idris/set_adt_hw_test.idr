module set_adt_hw_Test

import list
import nat
import eq
import Serialize
import list
import ite
import bool
import option
import pair
import set_adt_hw

laa: list nat
laa = (O :: (S (S O)):: (S (S (S (S O)))) :: nil)

lii: list nat
lii = ((S O)::(S (S (S O)))::nil)

loo: list nat
loo = (O::(S O)::(S (S O))::nil)

lee: list nat
lee = ((S (S O)):: (S (S (S O)))::nil)

nul: list nat
nul = nil

isEmptyNul: bool
isEmptyNul = isEmpty (mkSet nul)
--expects true

isEmptyLee: bool
isEmptyLee = isEmpty (mkSet lee)
--expects false

insert5: set nat
insert5 = set_insert (S (S (S (S (S O))))) (mkSet lee)
--expect {5, 2, 3, nil}

remove5: set nat
remove5 = set_remove (S (S (S (S (S O))))) insert5
--expect {2, 3, nil}

remove5lee: set nat
remove5lee = set_remove (S (S (S (S (S O))))) (mkSet lee)
--expects {2, 3}

cardinalloo: nat
cardinalloo = set_cardinality (mkSet loo)
--expects 3

cardinallee: nat
cardinallee = set_cardinality (mkSet lee)
--expects 2

member1: bool
member1 = set_member (S O) (mkSet loo)
--expects true

member5: bool
member5 = set_member (S (S (S (S (S O))))) (mkSet loo)
--expects false

unionloolee: set nat
unionloolee = set_union (mkSet loo) (mkSet lee)
--expects {0, 1, 2, 3, nil}

unionloonul: set nat
unionloonul = set_union (mkSet loo) (mkSet nul)
--expects {0, 1, 2, nil}

intersectloolee: set nat
intersectloolee = set_intersection (mkSet loo) (mkSet lee)
--expect {2, nil}

intersectloonul: set nat
intersectloonul = set_intersection (mkSet loo) (mkSet nul)
--expect {nil}

diffloolee: set nat
diffloolee = set_difference (mkSet loo) (mkSet lee)
--expects {0, 1, 3}

diff: set nat
diff = set_difference (mkSet loo) (mkSet nul)
--expects {0, 1, 2}

allevenlaa: bool
allevenlaa = set_forall evenb (mkSet laa)
--expects true

allevenloo: bool
allevenloo = set_forall evenb (mkSet loo)
--expects false

existevenloo: bool
existevenloo = set_exists evenb (mkSet loo)
--expects true

existevenlii: bool
existevenlii = set_exists evenb (mkSet lii)
--expects false

witevenlii: option nat
witevenlii = set_witness evenb (mkSet lii)
--expects none

witevenloo: option nat
witevenloo = set_witness evenb (mkSet loo)
--expects some O

productloolee: set (pair nat nat)
productloolee = set_product (mkSet loo) (mkSet lee)
--expect {(0,2) (0,3) (1,2) (1,3) (2,2) (2,3)}

productleenul: set (pair nat nat)
productleenul = set_product (mkSet loo) (mkSet nul)
--expect nil

eqlleeloo: bool
eqlleeloo = set_eql (mkSet lee) (mkSet loo)
--expects false

eqlleelee: bool
eqlleelee = set_eql (mkSet lee) (mkSet lee)
--expects true

Stringlee: String
Stringlee = set_toString (mkSet lee)
--expects {2, 3}

Stringnul: String
Stringnul = set_toString (mkSet nul)
--expects {}
