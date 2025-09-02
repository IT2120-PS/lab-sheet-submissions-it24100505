setwd("C:/Users/it24100505/Desktop/IT24100505")
getwd()

n1 <- 50
p1 <- 0.85

cat("X ~ Binomial(n = 50, p = 0.85)\n")

prob_47_or_more <- pbinom(46, size = n1, prob = p1, lower.tail = FALSE)
cat("P(X >= 47) =", prob_47_or_more, "\n\n")

lambda2 <- 12

cat("X = Number of customer calls received in one hour\n")

cat("X ~ Poisson(lambda = 12)\n")

prob_15_calls <- dpois(15, lambda = lambda2)
cat("P(X = 15) =", prob_15_calls, "\n")
