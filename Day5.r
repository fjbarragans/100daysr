rm(list = ls())
cat('\014')

#Password Generator
letters <- c('a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm',
             'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z',
             'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M',
             'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z')
numbers <- c('0', '1', '2', '3', '4', '5', '6', '7', '8', '9')
symbols <- c('!', '#', '$', '%', '&', '(', ')', '*', '+')

cat("Welcome to the PyPassword Generator!\n")
nr_letters <- as.integer(readline("How many letters would you like in your password?\n")) 
nr_symbols <- as.integer(readline("How many symbols would you like?\n"))
nr_numbers <- as.integer(readline("How many numbers would you like?\n"))

password_list <- c()
for (letter in 1:nr_letters) {
  password_list <- c(password_list, sample(letters, 1))
}
for (symbol in 1:nr_symbols) {
  password_list <- c(password_list, sample(symbols, 1))
}
for (number in 1:nr_numbers) {
  password_list <- c(password_list, sample(numbers, 1))
}
password_list <- sample(password_list, length(password_list))
password <- paste0(password_list, collapse="")
cat(password)
