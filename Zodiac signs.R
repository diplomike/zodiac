library(tidyverse)
library(usethis)
'For using use_github'

zodiac <- c(1:12)
s <- sample(zodiac,300,T)
acc <- NULL
pred <- NULL
for (i in 1:1000) {
  for (n in 1:300)
    pred <-  c(pred, s[n] == sample(zodiac,1))
  acc <- c(acc, mean(pred))
  pred <- NULL}
cat ("expected acc = ", 1/12)
ggplot(data.frame(acc)) + geom_histogram(aes(acc), bins=50) + 
  scale_x_continuous("Prediction accuracy", seq(0,,0.005),seq(0,,0.001),,seq(0,,0.005))

quantile(acc, 0.99) 
'Indicate the accuracy above which the population only constitutes to 1% of the total.'

use_github() 
'To create a remote repo on Github.'
