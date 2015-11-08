module boolTest

import bool
import Serialize

t: bool
t = true

f: bool
f = false

b1: bool
b1 = true

b2: bool
b2 = true

b3: bool
b3 = false

b4: bool
b4 = not true

b5: bool
b5 = not b1

b6: bool
b6 = not (not b5)

|||a test expecting true
andtt: bool
andtt = and t t

||| a test expecting false
andtf: bool
andtf = and t f

||| a test expecting false
andft: bool
andft = and f t

||| a test expecting false
andff: bool
andff = and f f

|||a test expecting true
ortt: bool
ortt = or t t

||| a test expecting true
ortf: bool
ortf = or t f

||| a test expecting true
orft: bool
orft = or f t

||| a test expecting false
orff: bool
orff = or f f

|||a test expecting false
nandtt: bool
nandtt = nand t t

||| a test expecting true
nandtf: bool
nandtf = nand t f

||| a test expecting true
nandft: bool
nandft = nand f t

||| a test expecting true
nandff: bool
nandff = nand f f

|||a test expecting false
xortt: bool
xortt = xor t t

||| a test expecting true
xortf: bool
xortf = xor t f

||| a test expecting true
xorft: bool
xorft = xor f t

||| a test expecting false
xorff: bool
xorff = xor f f


st: String
st = toString true

sf: String
sf= toString false
