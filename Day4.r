rm(list = ls())
cat('\014')

#Rock, paper and scissors
election <- as.integer(readline(prompt="What do you choose? Type 1 for Rock, 2 for Paper and 3 for Scissors? "))
rock <- "
    _______
---'   ____)
      (_____)
      (_____)
      (____)
---.__(___)
"

paper <- "
    _______
---'   ____)____
          ______)
          _______)
         _______)
---.__________)
"

scissors <- "
    _______
---'   ____)____
          ______)
       __________)
      (____)
---.__(___)
"
options <- list(rock, paper, scissors)
computer <- sample(1:3, 1)

cat(paste0("You choose:\n", options[[election]], "\n\nComputer chose:\n", options[[computer]], "\n\n"))

if (election == computer) {
  cat("Draw\n")
} else if (election - computer == 1) {
  cat("You win\n")
} else if (election == 1 & computer == 3) {
  cat("You win\n")
} else {
  cat("You lose\n")
}
