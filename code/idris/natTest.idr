module natTest

import nat
import bool
import pair
import Serialize
import eq

-- zero
z: nat
z = O

-- one
o: nat
o = S O

-- two 
t: nat
t = S (S O)

-- three
r: nat
r = S t

-- four
f: nat
f = S r

-- five
v: nat
v = S f

--ten
vv: nat
vv = S (S (S (S (S v))))

x: bool
x = isZero r

y: nat
y = succ O

a: bool
a = evenb O

b: bool
b = evenb (S O)

c: bool
c = evenb (S (S O))

d: bool
d = evenb r

e: bool
e = evenb (S r)

||| a test, expecting O
h1: nat
h1 = add O O

||| a test, expecting S (S O)
h2: nat
h2 = add O (S (S O))

||| a test, expecting (S O)
h3: nat
h3 = add (S O) O

||| a test, expecting S (S (S (S (S O))))
h4: nat 
h4 = add (S (S O)) (S (S (S O)))

||| a test expecting S (S (S (S (S (S O)))))
mult1: nat
mult1 = mult t r

||| a test expecting S (S (S (S (S (S O)))))
fact1: nat
fact1 = fact r

||| a test expecting S (S (S (S (S O))))
sub1: nat
sub1 = sub vv v

||| a test, expecting false
lt1: bool
lt1 = lt O O

|||a test expecting true
lt2: bool
lt2 = lt t f

|||a test, expecting false
lt3: bool
lt3 = lt vv v

|||a test expecting true
le1: bool
le1 = le O O

||| a test expecting true
le2: bool
le2 = le vv vv

|||a test expecting false 
le3: bool
le3 = le vv v

|||a test expecting true
le4: bool
le4 = le r f

||| a test expecting S O
ex1: nat
ex1 = exp O O

||| a test expecting S( S( S( S( S( S( S( S( O))))))))
ex2: nat
ex2 = exp t r

||| a test expecting true
eq1: bool
eq1 = eql_nat f f

||| a test expecting false
eq2: bool
eq2 = eql_nat t f

||| a test expecting false
eq3: bool
eq3 = eql_nat f t

||| a test expecting true
ge1: bool
ge1 = ge f t

|||a test expecting false
ge2: bool
ge2 = ge t f

|||a test expecting true
ge3: bool
ge3 = ge f f

||| a test expecting true
gt1: bool
gt1 = gt f t

|||a test expecting false
gt2: bool
gt2 = gt t f

|||a test expecting false
gt3: bool
gt3 = gt f f

|||a test expecting O
fibO: nat
fibO = fib O

||| a test expecting S O
fib1: nat
fib1 = fib o

||| a test expecting S O
fib2: nat
fib2 = fib t

||| a test expecting S( S (O))
fib3: nat
fib3 = fib r

||| a test expecting S( S( S( S( S( S( S( S( O))))))))
fib6: nat
fib6 = fib (S( S( S( S( S( S( O)))))))

addTwo: nat -> nat
addTwo = add (S (S O))

sz: String
sz = toString z

svv: String
svv = toString vv
