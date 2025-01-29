# Conditions in R

# Making choices with if, else,  and else if
i <- -1
if(i==1) {
  print("first")
} else if (i==2) {
  print("second")
} else {
  print("other")
}
# if i <- 1 the first condition (if) will catch it
# if i <- 2 the second condition (else if) will catch it
# if i <- -1, the third condition (else) wil catch it

socal <- c("Los Angeles", "Orange", "San Diego")
county1 <- "San Francisco"
county2 <- "Mendocino"
if(county1 %in% socal & county2 %in% socal) {
  print("both counties in socal")
} else if (county1 %in% socal){
  print("county1 in socal")
} else if(county2 %in% socal){
  print("county2 in socal")
} else {
  print("no counties in socal")
}
# if county1 <- "San Francisco"county2 <- "Los Angeles", the second condition
# will catch it
# if county1 <- "Orange" county2 <- "Los Angeles", the first condition will
# catch it
# if county1 <- "San Francisco" county2 <- "Mendocino", fourth condition will
# catch it


# Repeating yourself with vectorized functions
cylinder_volume <- function(radius, height){
  result <- pi * radius^2 * height / 2
  return(result)
}

cylinder_volume(2,3)
cylinder_volume(1,4)

radii <- c(1,2,3)
heights <- c(3,2,1)
cylinder_volume(radii,heights)

# Repeating yourself for loops
# simple lop
for(i in 4:8) {
  print(i)
}

# 4:8 collection
# i is iterator
# first time i=4, second time i=5, etc

# Two types of iterators
animal <- c("fish", "octopus", "fish", "fish", "octopus")
count <- c(3,1,6,7,2)

# First type of iterator- loop over collection directly
for (a in animal) {
  print(a)
}

# Second type of iterator- loop over indices
for (i in 1:length(animal)) {
  print(rep(animal[i], count[i]))
}

# Allocate (make room for it) result
octopus_mass_g <- 135
fish_mass_g <- 60
total_mass <- rep(0, length(animal))
for (i in 1:length(animal)) {
  if (animal[i] == "octopus") {
    total_mass[i] <- count[i] * octopus_mass_g
  } else if (animal[i] == "fish") {
  total_mass[i] <- count[i] * fish_mass_g
  }
}
# its going to go through all the indices of animal
# check if the 1st,2nd,3rd, or 4th animal an octopus
# if so the 1st,2nd,3rd, and 4th in total mass is the count times octopus mass

total_mass
animal
count
# in R console, 3 fish weigh 180, 1 octopus weigh 135, 6 fish weigh 360, etc



