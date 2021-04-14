###MICE check - Determining Range of Plausible Values###

#Import Test Sample Data
library(readr)
TestSampleAchievement <- 
  read_csv("[filepath]/TestSampleAchievement.csv")

#write function for computing non-outlier bounds

non_outlier_bounds <- function(x){

q1 <- quantile(x, .25, na.rm = TRUE)
q3 <- quantile(x, .75, na.rm = TRUE)
IQR <- q3 - q1
lowerbound <- q1 - (1.5*IQR)
upperbound <- q3 + (1.5*IQR)
print(c(lowerbound, upperbound))

}

#apply function to columns of test sample

bounds_df <- apply(TestSampleAchievement[2:19], 2, non_outlier_bounds)


###Generating dotplot with hypothetical imputed values###
####For examining plausibility of values####


library(ggplot2)
library(dplyr)
library(extrafont)
loadfonts(device="win")

#set seed for reproducibility
set.seed(1)

#randomly draw 48 values from a normal distribution with a mean 265 and standard deviation 10.
hypothetical_scores <- rnorm(48, 265, 10)

#build graph
as.data.frame(hypothetical_scores) %>%
  ggplot(., aes(x=1, y=hypothetical_scores)) + 
  geom_dotplot(binwidth = 1, binaxis = "y", stackdir = "center") +
  theme(axis.title.x=element_blank(),
        axis.text.x=element_blank(),
        axis.ticks.x=element_blank()) +
  geom_hline(yintercept = 278, color="red") + 
  geom_hline(yintercept = 252, color="red") + 
  ylab("Score") +
  theme(text=element_text(size=14,  family="serif"))

