module optionTest

import bool

import unit

import option

o1: option bool
o1 = none

o2: option bool
o2 = some true

o3: option unit
o3 = some mkUnit
