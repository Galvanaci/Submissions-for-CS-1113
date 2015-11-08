module Oscars

import bool
import nat
import relation

||| A record type that contains
||| information for the 2015 Oscar
||| nominees for best film. It shows
||| name of the film, whether it won best film
||| the # of awards it was nominated for, how many it won
||| whether there was a female lead or a male lead nominated.
record Oscars where
  constructor mkOscars
  title : String
  bestfilm : bool
  noms : Nat
  wins : Nat
  femalelead : bool
  malelead : bool

AmSn: Oscars
AmSn = mkOscars "American Sniper" false 6 1 false true

BrdM: Oscars
BrdM = mkOscars "Birdman or (The unexpected Virtue of Ignorance)" true 9 4 false true

BoyH: Oscars
BoyH = mkOscars "Boyhood" false 5 1 false false

GrBH: Oscars
GrBH = mkOscars "The Grand Budapest Hotel" false 9 4 false false

ImG: Oscars
ImG = mkOscars "Imitation Game" false 8 1 false true

Sel: Oscars
Sel = mkOscars "Selma" false 2 1 false false

ThoE: Oscars
ThoE = mkOscars "The Theory of Everything" false 5 1 true true

Whpl: Oscars
Whpl = mkOscars "Whiplash" false 5 3 false false

|||This does exactly what title: String did in the record
getTitle: Oscars -> String
getTitle = title


