module lista

import nat

data list a = nil | cons a (list a)

|||measures the number of members of a list
length: list a -> nat
length nil = O
length (cons n l) = S (length l)

|||appends the two lists without scrambling them
append: list a -> list a -> list a
append nil l = l
append (cons h t) l = cons h (append t l)


