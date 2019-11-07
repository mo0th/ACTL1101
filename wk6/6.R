number_of_books <- function(k, r) {
  count <- 0

  # increment count while the number of books is valid
  while ((count * k) %% 10 != r) {
    count <- count + 1
  }
  
  return(count)
}