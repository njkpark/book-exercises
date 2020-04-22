# Exercise 1: creating data frames

# Create a vector of the number of points the Seahawks scored in the first 4 games
# of the season (google "Seahawks" for the scores!)
scores <- c(21, 28, 27, 27)

# Create a vector of the number of points the Seahwaks have allowed to be scored
# against them in each of the first 4 games of the season
opp <- c(20, 26, 33, 10)

# Combine your two vectors into a dataframe called `games`
games <- data.frame(scores, opp)

# Create a new column "diff" that is the difference in points between the teams
# Hint: recall the syntax for assigning new elements (which in this case will be
# a vector) to a list!
games$diff <- (scores - opp)

# Create a new column "won" which is TRUE if the Seahawks won the game
games$won <- games$scores > games$opp

# Create a vector of the opponent names corresponding to the games played
opp_names <- c("Bengals", "Stelers", "Saints", "Cardinals")

# Assign your dataframe rownames of their opponents
rownames(games) <- opp_names

# View your data frame to see how it has changed!
View(games)
