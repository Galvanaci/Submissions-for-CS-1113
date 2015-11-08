module listExample

import Oscars
import list
import bool
import nat

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

mapWins: list Oscars -> list nat
mapWins nil = nil
mapWins (h::t) = (wins h)::(mapWins t)
