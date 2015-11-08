module nat

import bool
import eq
import Serialize

data nat = O | S nat


||| returns true if the argument is (represents) zero, otherwise false
isZero: nat -> bool
isZero O = true
isZero _ = false

||| returns the successor of any given nat
succ: nat -> nat
succ n = S n

||| returns the predecessor of any given nat
pred: nat -> nat
pred O = O
pred (S n) = n

||| return true if the argument is even otherwise false
evenb: nat -> bool
evenb O = true
evenb (S O) = false
evenb (S (S n)) = evenb n

||| return false if the argument is event otherwise true
||| i.e./ return true if it's odd and false if it's even.
oddb: nat -> bool
oddb n = not (evenb n)

||| given a pair of natural numbers, return its sum
add: nat -> nat -> nat
add O m = m
add (S n) m = S (add n m)

||| given a pair of natural numbers, return its product
mult: nat -> nat -> nat 
mult O m = O
mult (S n) m = add (mult n m) m

|||given a natural number return the product of its predecessor and all of its successors
fact: nat -> nat
fact O = S O
fact (S n) = mult (S n) (fact n)

|||given a pair of natural numbers, return the difference
sub: nat -> nat -> nat
sub O n = O
sub n O = n
sub (S n) (S m) = sub n m

||| Given a pair of natural numbers, (a, b), return true if a < b otherwise return false
lt: nat -> nat -> bool
lt O O = false
lt O m = true
lt (S n) O = false
lt (S n) (S m) = lt n m

||| Given a pair of natural numbers, (a, b), return true if a < = b otherwise return false
le: nat -> nat -> bool
le O m = true
le (S n) O = false
le (S n) (S m) = le n m

|||given a pair of natural numbers, (x, n), return the value of x raised to the nth power
exp: nat -> nat -> nat
exp x O = S O
exp x (S n) = mult x (exp x n)

||| given a pair of natural numbers, (a, b), return true if a is equal to b, otherwise return false
eql_nat: nat -> nat -> bool
eql_nat O O = true
eql_nat (S n) (S m) = eql_nat n m
eql_nat  _ _ = false


|||given a pair of natural numbers, (a, b), return true if a is greater than or equal to  b otherwise return false
ge: nat -> nat -> bool
ge m O = true
ge O (S n) = false
ge (S m) (S n) = ge m n


|||given a pair of natural numbers, (a, b), return true if a is greater than b, otherwise return false
gt: nat -> nat -> bool
gt O O = false
gt m O = true
gt O n = false
gt (S m) (S n) = gt m n

fib: nat -> nat
fib O = O
fib (S O) = S O
fib (S (S n)) = add (fib (S n)) (fib n)

instance eq nat where
  eql n1 n2 = eql_nat n1 n2

instance Serialize nat where
  toString O = "Z"
  toString (S n) = "|" ++ (toString n)
