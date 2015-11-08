module list

import nat
import bool
import ite
import pair
import eq
import option
import Serialize

infixr 7 ::,++
--infix operation with right association, precedence of 7
data list a = nil | (::) a (list a)

length: list a  -> nat
length nil {a = nat} = O
length (n::l) = S(length l)

||| append as an infix operator ++
(++): list a -> list a -> list a
(++) nil l2 = l2
(++) (h::t) l2 = h::(t++l2)

||| map a function over the element of a list
map: (a -> b) -> list a -> list b
map f nil = nil
map f (h::t) = (f h) :: (map f t)

|||give a list and a predicate on elements return the sublist of elemnets for which teh predicate is true
filter: (a -> bool) -> list a -> list a
filter f nil = nil
filter f (h::t) = ite (f h)
                      (h::(filter f t))
                          (filter f t)

foldr: (a -> a -> a) -> a -> (list a
) -> a
foldr f id nil = id
foldr f id (h::t) = f h (list.foldr f id t)

head: list a -> option a
head nil = none
head (h::t) = some h

tail: list a -> option (list a)
tail nil = none
tail (h::t) = some t

member: (eq a) => a -> list a -> bool
member v nil = false
member v (h::t) = ite (eql v h)
                      true
                      (member v t)

notmember: (eq a) => a -> a -> bool
notmember a1 a2 = not (eql a1 a2)

instance (eq a) => eq (list a) where
 eql nil nil = true
 eql (h::t) nil = false
 eql nil (h::t) = false
 eql (h1::t1) (h2::t2) = and (eql h1 h2) (eql t1 t2)

--same_element: (eq a) => list a -> --list a -> bool
--same_element nil nil = true
--same_element nil (h1::t1) = false
--same_element (h1::t1) nil = false
--same_element (h1::t1) (h2::t2) = --ite (and (member h1 (h2::t2)) --(member h2 (h1::t1))) --(same_element t1 t2) false

subset_elements: (eq a) => list a -> list a -> bool
subset_elements nil nil = true
subset_elements nil (h::t) = true
subset_elements (h::t) nil = false
subset_elements (h1::t1) (h2::t2) = ite (member h1 (h2::t2)) (subset_elements t1 (h2::t2)) false

subset_element: (eq a) => list a -> list a -> bool
subset_element nil l2 = true
subset_element (h::t) l2 = and (member h l2) (subset_element t l2)

same_elements: (eq a) => list a -> list a -> bool
same_elements l1 l2 = and (subset_element l1 l2) (subset_element l2 l1)

toStringList: (Serialize a) => list a -> String
toStringList nil = ""
toStringList (h::nil) = (toString h)
toStringList (h::t) = (toString h) ++ ", " ++ (toStringList t)


instance (Serialize a) => Serialize (list a) where
  toString l = "[" ++ (toStringList l) ++ "]"
