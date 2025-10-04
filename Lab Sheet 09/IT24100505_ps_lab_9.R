setwd("C:\\Users\\thava\\OneDrive\\Documents\\Sliit semester 3\\PS\\jaddus_ps_lab_09")
getwd()

set.seed(42)  # For reproducibility
bake_time <- rnorm(25, mean = 45, sd = 2)

t.test(bake_time, mu = 46, alternative = "less")


