collatzNext <- function(number = 1) {
  if (number == 1) { 
    # return 0 to show the sequence has ended
    return(0)
  } else if (number %% 2 == 0) { 
    # return half the number if it is even
    return(number / 2)
  } else if (number %% 2 == 1) { 
    # return the number times 3 plus 1 if it is odd
    return(number * 3 + 1)
  }
}

collatzLength <- function(starting_number = 1) {
  # set a variable to count the length of the sequence
  counter <- 0
  # create a variable to hold the current number
  current_number <- starting_number
  # get the next number in the sequence if the current number 
  # is not 0
  while (current_number != 0) {
    # set the current number to the next number in the sequence
    current_number <- collatzNext(current_number)
    counter <- counter + 1
  }
  return(counter)
}
