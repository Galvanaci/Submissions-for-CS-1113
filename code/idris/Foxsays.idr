module GOP

import bool
import lista

data candidate = Trump | Carson | Fiorina | Rubio | Bush | Cruz | Christie

||| a row of data that shows candidate's name, age, number of kids they have had, networth, poll percentage
data profile = mkProfile candidate Nat bool Nat Nat

DT: profile
DT = mkProfile Trump 69 false 5 23

BC: profile
BC = mkProfile Carson 64 false 3 17

CF: profile
CF = mkProfile Fiorina 61 false 2 12

MR: profile
MR = mkProfile Rubio 44 true 4 10

JB: profile
JB = mkProfile Bush 62 true 3 9

TC: profile
TC = mkProfile Cruz 44 true 2 6

CC: profile
CC = mkProfile Christie 53 true 4 4

surname: profile -> candidate
surname (mkProfile s a o n p) = s

age: profile -> Nat
age (mkProfile s a o n p) = a

heldoffice: profile -> bool
heldoffice (mkProfile s a o n p) = o

numberofkids: profile -> Nat
numberofkids (mkProfile s a o n p) = n

percentage: profile -> Nat
percentage (mkProfile s a o n p) = p

HasHeldOffice: list profile
HasHeldOffice = cons MR (cons JB (cons TC (cons CC nil)))

HasNotHeldOffice: list profile
HasNotHeldOffice = cons DT (cons BC (cons CF nil))

ListOfCandidates: list profile
ListOfCandidates = cons DT (cons BC (cons CF (cons MR (cons JB (cons TC (cons CC nil))))))
