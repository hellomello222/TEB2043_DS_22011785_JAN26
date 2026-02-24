cat("Check whether an n digits number is Armstrong or not:\n")
cat("-----------------------------------------------------------\n")

num <- as.integer(readline("Input an integer: "))

digits <- strsplit(as.character(num), "")[[1]]
power <- length(digits)

armstrong_sum <- 0

for (d in digits) {
  armstrong_sum <- armstrong_sum + (as.numeric(d))^power
}

if (armstrong_sum == num) {
  cat(num, "is an Armstrong number.\n")
} else {
  cat(num, "is not an Armstrong number.\n")
}