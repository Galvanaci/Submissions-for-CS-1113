#Assignment commands

# {}

x=5

# { (x,5) }
y=6

# { (x,5),(y,6) }
#conditions

if (True):
    x = 0
    z = 10
else:
    x = 1
    z = 11
# { (x, 0), (y,6), (z, 10) }

if (x > 0 or y == 6):
    x = 0
    z = 10
else:
    x = 1
    z = 11

# iteration

# { (x,1), (y,6), (z,11) }

times = 10
while (times > 0):
    print("Hello")
    times = (times - 1)

# { (x,1), (y,6), (z,11), (times,0) }

# procedures procedure callable, def, function name,
# arguments. return, must be indented

def fun(a, b, c, x):
    result = a * (x * x) + b * x + c
    return result
