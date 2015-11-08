module listExample

import Oscars
import list
import bool
import nat
import unit
import pair
import ite
import relation

films: list Oscars
films = AmSn :: BrdM :: BoyH :: GrBH :: ImG :: Sel :: ThoE :: Whpl :: nil

best: list Oscars
best = BrdM :: nil

notbest: list Oscars
notbest = AmSn :: BoyH :: GrBH :: ImG :: Sel :: ThoE :: Whpl :: nil

won1: list Oscars
won1 = AmSn :: BoyH :: ImG :: Sel :: ThoE :: nil

won2: list Oscars
won2 = nil

won3: list Oscars
won3 = Whpl :: nil

won4: list Oscars
won4 = BrdM :: GrBH :: nil

Best: list Oscars
Best = filter bestfilm films

flead: list Oscars
flead = filter femalelead films
--expects Theory of Everything Record

mlead: list Oscars
mlead = filter malelead films
--expects American Sniper, Birdman, Imitation Game, Theory of Everything

mlNoms: list Nat
mlNoms = map noms mlead
--expects 6::9::8::5::nil

mlTNoms: Nat
mlTNoms = list.foldr plus 0 mlNoms
--expects 28

unoline: Nat
unoline = list.foldr plus 0 (map noms (filter malelead films))
--expects 28

qMlNoms: Nat
qMlNoms = query plus 0 noms malelead films
--expects 28

MlWins: Nat
MlWins = query plus 0 wins malelead films
--expects 7

MLWins: Nat
MLWins = query2 films malelead wins plus 0
--expects 7

MLTitles: String
MLTitles = query2 films malelead title (++) ""
-- Expects American Sniper BirdmanImitationGame The Theory of Everything

numMLFilms: Nat
numMLFilms = query2 films malelead countOne plus 0
--expects 4

NumMLFilms: Nat
NumMLFilms = count_rel films malelead
--expects 4

sumNomsMLFilms: Nat
sumNomsMLFilms = sum_rel films malelead noms
--expects 28

meanNomsMLFilms: pair Nat Nat
meanNomsMLFilms = ave_rel films malelead noms
--expect mkPair 28 4
