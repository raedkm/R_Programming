# Script information ------------------------------------------------------
# Initiation date 29/6/2021
# Project: R Programming book 
# Author: Raed K Alotaibi



# Chapter 7 Programs ------------------------------------------------------

get_symbol <- function() {
  wheel <- c("DD", "7", "BBB", "BB", "B", "C", "0")
  sample(wheel, size = 3, replace = T, prob = c(0.03, 0.03, 0.06, 0.1, 0.25, 0.01, 0.52))
}

get_symbol()

result <- list(replicate(get_symbol(),n = 50 ))





play <- function(){
  
  # step 1: generate symbols
  symbols <- get_symbol()
  
  # step 2: display symbols
  print(symbols)
  
  # step 3: score the symbols
  scpore(symbols)
}

play()


num <- c(-2, 1)

if(all(num <0)) {
  num <- num * -1
print(num)
  }


if(FALSE){
  print("Yes")
}



# If else statment

if("case 1: all the same") {
  prize <- x # look up prize
}else if("case 2: all bar") {
  prize <- x# assign $5
}else {
  #count cherries
  prize <- x# calculate a prize
}

# count diamonds
# double the prize if necessary




# Subtask testing three of a kind -----------------------------------------

symbols <- c("7","7", "7")
symbols

# different methods for checking whether symbol[1] = symbol[2] = symbol[3]
symbols[1] == symbols[2] & symbols[2] == symbols[3]

all(symbols == symbols[1])

length(unique(symbols)) == 1

same <- symbols[1] == symbols[2] && symbols[2] == symbols[3]
 

# adding the first argument
same <- symbols[1] == symbols[2] && symbols[2] == symbols[3]

if(same){
  
  prize <- x # look up prize

  } else if("case 2: all bar") {
  
  prize <- x # assign $5

  } else {

  #count cherries
  prize <- x # calculate a prize

  }

# count diamonds
# double the prize if necessary



# subtask 2 testing all symbors are type of bar ---------------------------

symbols <- c("B", "BBB", "BB")


bars <- all(symbols %in% c("B", "BBB", "BB"))


symbols %in% bar
all(symbols %in% bar)



# adding the second argument
same <- symbols[1] == symbols[2] && symbols[2] == symbols[3]
bars <- symbols %in% c("B", "BBB", "BB")

if(same){
  
  prize <- x # look up prize
  
} else if(all(bars)) {
  
  prize <- x # assign $5
  
} else {
  
  #count cherries
  prize <- x # calculate a prize
  
}

# count diamonds
# double the prize if necessary





# subtask 3 look up tables ------------------------------------------------



# subsetting payout

payout <- c("DD" = 100, "7" = 80, "BBB" =  40, "BB" = 25, "B" = 10, "C" = 10 , "0" = 0)

payout["DD"]
unname(payout["DD"])
symbols[1]
payout[symbols[1]]


# counting "C" in symbols

symbols <- c("B", "C", "0")
sum(symbols == "C")


# adding the third and fourth and fifth argument

symbols <- c("DD", "C", "C")

same <- symbols[1] == symbols[2] && symbols[2] == symbols[3]
bars <- symbols %in% c("B", "BBB", "BB")


if(same){
  
  #Subset the prize value using look up table
  payout <- c("DD" = 100, "7" = 80, "BBB" =  40, "BB" = 25, "B" = 10, "C" = 10 , "0" = 0)
  prize <- unname(payout[symbols[1]]) # look up prize
  
} else if(all(bars)) {
  
  #assign the value 5
  prize <- 5 
  
} else {
  
  #count cherries
  cherries <- sum(symbols == "C")
  prize <- c(0, 2, 5)[cherries + 1] # calculate a prize
  
}

# adjust for 
diamond <- sum(symbols == "DD")
prize <- prize * ( 2 ^ diamond)
prize





# Creating the final functions ---------------------------------------------


# the symbols function
get_symbol <- function() {
  wheel <- c("DD", "7", "BBB", "BB", "B", "C", "0")
  sample(wheel, size = 3, replace = T, prob = c(0.03, 0.03, 0.06, 0.1, 0.25, 0.01, 0.52))
}


# the scoring function
score <- function(symbols){
  
  #identify the case
  same <- symbols[1] == symbols[2] && symbols[2] == symbols[3]
  bars <- symbols %in% c("B", "BBB", "BB")
  
  # get prize
  if(same){
    
    #Subset the prize value using look up table
    payout <- c("DD" = 100, "7" = 80, "BBB" =  40, "BB" = 25, "B" = 10, "C" = 10 , "0" = 0)
    prize <- unname(payout[symbols[1]]) # look up prize
    
  } else if(all(bars)) {
    
    #assign the value 5
    prize <- 5 
    
  } else {
    
    #count cherries
    cherries <- sum(symbols == "C")
    prize <- c(0, 2, 5)[cherries + 1] # calculate a prize
    
  }
  
  # adjust for 
  diamond <- sum(symbols == "DD")
  prize * ( 2 ^ diamond)
  
}


# the playing function
play <- function(){
  symbols <- get_symbol()
  print(symbols)
  score(symbols)
} 


# running the game
play()




list(replicate(play(), n = 500))
          