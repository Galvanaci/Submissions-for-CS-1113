module list

import nat

infixr 7 ::
--infix operation with right association, precedence of 7
data list a = nil | (::) a (list a)

length: list a  -> nat
length nil {a = nat} = O
length (n::l) = S(length l)

|||takes a pair of lists and returns the list made by appending the lists
append: list a -> list a -> list a
append nil l = l
append (h::t) l = h::(append t l)
