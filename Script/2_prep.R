
# Chapter 8 S3 ------------------------------------------------------------

play()

one_play <- play()

deck <- data.frame(face = c("king", "queen"), value = c(1,5), suit = c("spade", "tree"))

# Checking the attributes
attributes(deck)


#Examples of attribute helper functions
class(deck)
row.names(deck)
levels(deck)
dim(deck)
names(deck)


levels(deck) <- c("lev1", "lev2", "lev3")
levels(deck)



# checking the attributes of one_play
attr(one_play)
attributes(one_play)

attr(one_play, "symbols") <- c("B", "0", "B")
attr(one_play, "symbols")
attributes(one_play)

one_play


# Adding the attribute ti symboles funciton
play <- function(){
  symbols <- get_symbol()
  prize <- score(symbols)
  attr(prize, "symbols") <- symbols
  prize
}

play()

score()
