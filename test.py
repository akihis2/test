# Define Function square

# FUNCTION square(x)
def square(x):
    def square_n(x):    # case for number input
        return x**2
    def square_l(x):    # case for list input
        return map(square_n,x)
    
    if type(x) is list:
        return square_l(x)
    else:
        return square_n(x)
# END FUNCTION square


# Test function square using test input

# PROGRAM main
x = [1., 2., 3., 4., 5.]

print 'square(2) =  ', square(2)
print 'square(2.) = ', square(2.)
print 'x =         ', x
print 'square(x) = ', square(x)
# END PROGRAM main
