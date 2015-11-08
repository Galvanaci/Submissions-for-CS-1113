# This program defines a procedure called hs. It takes one argument,n,
# that is expected and required to be a positive integer: not zero,
# not negative, and with no decimal point. Thr program will
# malfunction if the input does not satisfy this
# pre-condition/constraint. If the input satisfies the constraint,
# then it will output a sequence of numbers and then the length of the
# sequence.

def hs(n):
    if (n < 1):
        n = None
    else:
        count = 0
        while (n != 1):
            count = count
            if (n % 2 == 0):
                print(n)
                n = n//2
                count = count + 1
            else:
                print(n)
                n = 3*n+1
                count = count + 1
        print(n)
        print(count)
