rm(list = ls())
cat("\014")

#Tip calculator
cat("Welcome to the tip calculator\n")
bill <- readline(prompt = "What was the total bill? $ ")
tip <- readline(prompt = "What percentage tip would you like to give? 10, 12, or 15? ")
people <- readline(prompt = "How many people to split the bill? ")
tipp <- 1 + as.numeric(tip)/100
pay <- as.numeric(bill) * tipp / as.numeric(people)
payf <- format(round(pay, 2), nsmall = 2)

cat(paste("Each person should pay $", payf, "\n", sep = ""))
