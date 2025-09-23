
setwd("C:/Users/Jathusha V/Downloads/IT24100505")


weights <- c(2.46, 2.45, 2.47, 2.71, 2.46, 2.05, 2.6, 2.42, 2.43, 2.53,
             2.57, 2.85, 2.7, 2.53, 2.28, 2.2, 2.57, 2.89, 2.51, 2.47,
             2.66, 2.06, 2.41, 2.65, 2.76, 2.43, 2.61, 2.57, 2.73, 2.17,
             2.67, 2.05, 1.71, 2.32, 2.23, 2.76, 2.7, 2.13, 2.75, 2.2)

nicotine <- c(1.09, 1.74, 1.58, 2.11, 1.64, 1.79, 1.37, 1.75, 1.92, 1.47,
              2.03, 1.86, 0.72, 2.46, 1.93, 1.63, 2.31, 1.97, 1.7, 1.9,
              1.69, 1.88, 1.4, 2.37, 1.79, 0.85, 2.17, 1.68, 1.85, 2.08,
              1.64, 1.75, 2.28, 1.24, 2.55, 1.51, 1.82, 1.67, 2.09, 1.69)


weight_mean <- mean(weights)
weight_sd   <- sd(weights)

nicotine_mean <- mean(nicotine)
nicotine_sd   <- sd(nicotine)

cat("Weight - Population Mean:", weight_mean, "\n")
cat("Weight - Population SD:", weight_sd, "\n\n")

cat("Nicotine - Population Mean:", nicotine_mean, "\n")
cat("Nicotine - Population SD:", nicotine_sd, "\n\n")

set.seed(123)  # for reproducibility

n_samples <- 25
sample_size <- 6

weight_sample_means <- numeric(n_samples)
weight_sample_sds   <- numeric(n_samples)

nicotine_sample_means <- numeric(n_samples)
nicotine_sample_sds   <- numeric(n_samples)

for (i in 1:n_samples) {
  w_samp <- sample(weights, sample_size, replace = TRUE)
  weight_sample_means[i] <- mean(w_samp)
  weight_sample_sds[i]   <- sd(w_samp)
  
  n_samp <- sample(nicotine, sample_size, replace = TRUE)
  nicotine_sample_means[i] <- mean(n_samp)
  nicotine_sample_sds[i]   <- sd(n_samp)
}

cat("Weight - Sample Means:\n")
print(weight_sample_means)
cat("\nWeight - Sample SDs:\n")
print(weight_sample_sds)

cat("\nNicotine - Sample Means:\n")
print(nicotine_sample_means)
cat("\nNicotine - Sample SDs:\n")
print(nicotine_sample_sds)

weight_mean_of_sample_means <- mean(weight_sample_means)
weight_sd_of_sample_means   <- sd(weight_sample_means)

nicotine_mean_of_sample_means <- mean(nicotine_sample_means)
nicotine_sd_of_sample_means   <- sd(nicotine_sample_means)

cat("\nWeight - Mean of Sample Means:", weight_mean_of_sample_means, "\n")
cat("Weight - SD of Sample Means:", weight_sd_of_sample_means, "\n")

cat("\nNicotine - Mean of Sample Means:", nicotine_mean_of_sample_means, "\n")
cat("Nicotine - SD of Sample Means:", nicotine_sd_of_sample_means, "\n")

weight_theoretical_sd <- weight_sd / sqrt(sample_size)
nicotine_theoretical_sd <- nicotine_sd / sqrt(sample_size)

cat("\nWeight - Theoretical SD of Sample Means:", weight_theoretical_sd, "\n")
cat("Nicotine - Theoretical SD of Sample Means:", nicotine_theoretical_sd, "\n")
