module colorlx

import bool
import pair

%default total

data colorlx = red | green | blue | yellow  | magenta | cyan


complement: colorlx -> colorlx
complement red = cyan
complement blue = yellow
complement green = magenta
complement cyan = red
complement yellow = blue
complement magenta = green

additive: colorlx -> bool
additive red = true
additive blue = true
additive green = true
additive b = false

subtractive: colorlx -> bool
subtractive c = not (additive c)

complements: pair colorlx colorlx -> bool
complements (mkPair red cyan) = true
complements (mkPair cyan red) = true
complements (mkPair blue yellow) = true
complements (mkPair yellow blue) = true
complements (mkPair green magenta) = true
complements (mkPair magenta green) = true
complements b = false


mixink: pair colorlx colorlx -> colorlx
mixink (mkPair magenta cyan) = blue
mixink (mkPair cyan magenta) = blue
mixink (mkPair magenta yellow) = red
mixink (mkPair yellow magenta) = red
mixink (mkPair cyan yellow) = green
mixink (mkPair yellow cyan) = green
