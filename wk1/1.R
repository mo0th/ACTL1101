# Increase the number of decimal places shown to match example
options(digits = 9)

# Assign the value of n
n <- 100

# Calculate the absolute value of the error
error = abs((n/(n-1)) ** n - exp(1))

# Display the error
print(error)