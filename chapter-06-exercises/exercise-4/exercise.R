# Exercise 4: functions and conditionals

library(lintr)

#making a change so that we can save, stage, commit, and push

# Define a function `is_twice_as_long` that takes in two character strings, and 
# returns whether or not (e.g., a boolean) the length of one argument is greater
# than or equal to twice the length of the other.
# Hint: compare the length difference to the length of the smaller string

is_twice_as_long <- function(string1, string2) {
  #temp variables for length of the two string arguments
  string1_len <- nchar(string1)
  string2_len <- nchar(string2)
  #calculate the difference
  difference <-(string1_len - string2_len)
  #calculate the minimum
  min_len <- min(string1_len, string2_len)
  #create boolean variable for whether the difference is larger than min
  #which means one string is twice a long as the other
  diff_boolean <- difference >= min_len
  return(diff_boolean)
}

# Call your `is_twice_as_long` function by passing it different length strings
# to confirm that it works. Make sure to check when _either_ argument is twice
# as long, as well as when neither are!

is_twice_as_long("Niya Park", "University of Washington")
is_twice_as_long("University of Washington", "Niya Park")


# Define a function `describe_difference` that takes in two strings. The
# function should return one of the following sentences as appropriate
#   "Your first string is longer by N characters"
#   "Your second string is longer by N characters"
#   "Your strings are the same length!"

describe_difference <- function(string1, string2) {
  #calculate the difference
  difference <- nchar(string1) - nchar(string2)
  #if first string is longer, set output to say:
  if (difference > 0) {
    output <- paste("Your first string is longer by", difference, "characters")
    #if second string is longer, set out put to say:
  }else if (difference < 0) {
    difference <- abs(difference)
    output <- paste("Your second string is longer by", difference, "characters")
    #if they are the same length, set output to say:
  } else {
    output <- paste("Your strings are the same length!")
  }
  #return output var
  return(output)
}

# Call your `describe_difference` function by passing it different length strings
# to confirm that it works. Make sure to check all 3 conditions1

describe_difference("Hogwarts", "Strawberries")
describe_difference("Yoshi", "Mario")
describe_difference("Animal Crossing", "Puppy")
