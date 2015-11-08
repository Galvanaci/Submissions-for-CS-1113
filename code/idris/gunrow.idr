module gunrow

import lista

data country = Argentina | Australia | Austria | Honduras | USA

||| A record of this type represents a country and the death rate per 1O,OOO,OOO by gun for homocides, suicides, unintentional, and other.
data gunrow = mkGunrow country Nat Nat Nat Nat

argen: gunrow
argen = mkGunrow Argentina 190 279 64 362

aussi: gunrow
aussi = mkGunrow Australia 11 62 5 8

austri: gunrow
austri = mkGunrow Austria 18 268 1 8

hond: gunrow
hond = mkGunrow Honduras 648 0 0 0

murca: gunrow
murca = mkGunrow USA 355 670 16 9

homicidePer10M: gunrow -> Nat
homicidePer10M (mkGunrow c h s u o) = h

suicidePer10M: gunrow -> Nat
suicidePer10M (mkGunrow c h s u o) = s

unintentionalPer10M: gunrow -> Nat
unintentionalPer10M (mkGunrow c h s u o) = u

otherPer10M: gunrow -> Nat
otherPer10M (mkGunrow c h s u o) = o

countryName: gunrow -> country
countryName (mkGunrow c h s u o) = c

countries: list gunrow
countries = cons argen (cons aussi (cons austri (cons hond (cons murca nil))))
