
setwd("C:/Users/Jathusha V/Downloads/IT24100505")


snack_counts <- c(120, 95, 85, 100)
names(snack_counts) <- c("A", "B", "C", "D")


expected_probabilities <- rep(1/4, 4) 

test_result <- chisq.test(snack_counts, p = expected_probabilities)
print(test_result)


if (test_result$p.value < 0.05) {
  print("Reject the null hypothesis.\n")
  print("Snack choices are not equally distributed.\n")
} else {
  print("Fail to reject the null hypothesis.\n")
  print("Not equal distribution of snack choices.\n")
}
