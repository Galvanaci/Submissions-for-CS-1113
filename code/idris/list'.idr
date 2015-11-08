module list'

import nat
import bool

infixr 7 ::
--infix operation with right association, precedence of 7
data list' a = nil' | (::) a (list' a)

li: list' bool
li = true :: false :: true :: true :: nil'

length': list' a -> nat
length' nil' = O
length' (n::l') = S(length' l')
