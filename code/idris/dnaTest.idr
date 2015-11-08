module dnaTest

import dna
import list
import pair
import nat

ATCG: list base
ATCG = (A::T::C::G::nil)

ATTACGGC: list (pair base base)
ATTACGGC = mkPair A T :: mkPair T A :: mkPair C G :: mkPair G C :: nil

complementA: base
complementA = complement_base A
--expect T

complementT: base
complementT = complement_base T
--expect A

complementC: base
complementC = complement_base C
--expect G

complementG: base
complementG = complement_base G
--expect C

completedATCG: list (pair base base)
completedATCG = completed ATCG
--expects AT :: TA :: CG :: GC ::ni

completeATCG: list (pair base base)
completeATCG = complete ATCG
--expects AT :: TA :: CG :: GC ::nil

strand1a: list base
strand1a = strand1 ATTACGGC
--expects A::T::C::G::nil

strand2a: list base
strand2a = strand2 ATTACGGC
--expects T::A::G::C::nil

countingAs: nat
countingAs = countBase (A::A::T::A::C::G::nil) A
---expects (S (S (S O)))
