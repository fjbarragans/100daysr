rm(list = ls())
cat('\014')

#Treasure Island
cat("Welcome to Treasure Island.\n")
cat("Your mission is to find the treasure.\n")
option1 <- tolower(readline(prompt = "Left or Right? \n"))
if (option1 == "left") {
  option2 <- tolower(readline(prompt = "Swim or Wait? \n"))
  if (option2 == "wait") {
    option3 <- tolower(readline(prompt = "Which door? Red, Yellow or Blue? \n"))
    if (option3 == "yellow") {
      cat("You win!\n")
    } else if (option3 == "blue") {
      cat("Eaten by beast. \nGame over\n")
    } else if (option3 == "red") {
      cat("Burned by fire. \nGame over\n")
    } else {
      cat("Game over\n")
    }
  } else {
    cat("Attacked by trout. \nGame over\n")  
  }
} else {
  cat("Fall into a hole. \nGame over\n")
}
