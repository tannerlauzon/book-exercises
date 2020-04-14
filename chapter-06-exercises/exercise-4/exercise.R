# Exercise 4: functions and conditionals

# Define a function `is_twice_as_long` that takes in two character strings, and 
# returns whether or not (e.g., a boolean) the length of one argument is greater
# than or equal to twice the length of the other.
# Hint: compare the length difference to the length of the smaller string
is_twice_as_long <- function(string1 , string2) {
  #temp variables for length of two string arguements
  string1_len <- nchar(string1)
  string2_len <- nchar(string2)
  #calculate difference
  diff <- abs(string1_len - string2_len)
  #calculate minimum
  min_len <- min(string1, string2)
  #make boolean variable for whether diff is larger than min
  diff_boolean <- diff >= min_len
  return(diff_boolean)
}

# Call your `is_twice_as_long` function by passing it different length strings
# to confirm that it works. Make sure to check when _either_ argument is twice
# as long, as well as when neither are!
is_twice_as_long("cat", "dog")
is_twice_as_long("apple", "banana")
is_twice_as_long("pillow", "bed")

# Define a function `describe_difference` that takes in two strings. The
# function should return one of the following sentences as appropriate
#   "Your first string is longer by N characters"
#   "Your second string is longer by N characters"
#   "Your strings are the same length!"
describe_difference <- function(string1, string2) {
  #calculate difference
  diff <- nchar(string1) - nchar(string2)
  if (diff > 0) {
    sentense <- paste("Your first string is longer by", diff, "characters")
  } else if (diff < 0) {
    sentence <- paste("Your second string is longer by", diff, "characters")
  } else {
    sentence <- "Your strings are the same length!"
  }
  return(sentence)
}

# Call your `describe_difference` function by passing it different length strings
# to confirm that it works. Make sure to check all 3 conditions1
describe_difference("Apple", "Banana")
describe_difference("Naruto", "Sauske")
describe_difference("Dog", "Cat")