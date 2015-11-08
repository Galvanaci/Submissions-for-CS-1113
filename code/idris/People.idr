module People

import Person
import list
import bool

-- a few Persons

ge: Person
ge = mkPerson "Ge" 21 64 true

daryl: Person 
daryl = mkPerson "Daryl" 19 71 false

-- a list of Persons

people: list Person
people = tom::
         mary::
         ge::
         daryl::
         nil

women: list Person
women = filter gender people

wAges: list Nat
wAges = map age women

years: Nat
years = list.foldr plus 0 wAges

oneLine: Nat
oneLine = list.foldr plus 0 (map age (filter gender people))
