module Person
import bool

||| A record type that is equivalent to:
||| (data Person = mkPerson String nat)
||| but where we give names to fields.
||| A person has a name and an age in
||| years.
record Person where
  constructor mkPerson
  name: String
  age: Nat
  height: Nat
  gender: bool

setName: Person -> String -> Person
setName p n = record { name = n } p

tom: Person
tom = mkPerson "Tom" 18 72 false

mary: Person
mary = mkPerson "Mary" 21 68 true

tAge: Nat
tAge = age tom

tom': Person
tom' = record {name = "John" } tom
