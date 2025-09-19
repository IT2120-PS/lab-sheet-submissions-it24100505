setwd("C://Users//thava//OneDrive//Desktop//IT24100505")

prob_uniform <- punif(25, min = 0, max = 40) - punif(10, min = 0, max = 40)
print(paste("Probability train 8:10 and 8:25 =", prob_uniform))


prob_exponential <- pexp(2, rate = 1/3)
print(paste("Probability updat =", prob_exponential))



prob_iq_above_130 <- 1 - pnorm(130, mean = 100, sd = 15)
print(paste("Probability IQ > 130 =", prob_iq_above_130))



iq_95th_percentile <- qnorm(0.95, mean = 100, sd = 15)
print(paste("IQ score =", iq_95th_percentile))