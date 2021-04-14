

#1) Import example (artificial) dataset included in the EdSurvey package 
#   (the example dataset includes 16,915 students).

#Install and load EdSurvey package
install.packages("EdSurvey")
library(EdSurvey)

#import data and save to object names "df"
df <- readNAEP(system.file("extdata/data", "M36NT2PM.dat", package = "NAEPprimer"))

#reformat data into a data frame
df <- getData(df, c('composite', 'pared', 'sdracem', 'lep', 'origwt', 'jkunit', 'repgrp1'), 
              omittedLevels = FALSE, addAttributes = TRUE)
#This creates a dataframe with 73 variables-- including plausible values, jackknife replicate weights, and origwt

#assign a unique identifier to df (this will facilitate a splitting/re-merging step later, see line 57)
df$ID <- seq.int(nrow(df))
              
#2) Determine a plausible number of students that NAEP might typically sample per state-subgroup pair. 

  # 2a. NAEP samples approximately 2500 students per state-subject-grade. 
    # (source: https://nces.ed.gov/nationsreportcard/about/statejoin.aspx) 

#3) Draw a random sample of 2,500 students from the example dataset (of 16,915 students) to compute
#   estimand means and standard deviations (make sure at least 62 student from subgroups of interest 
#   are sampled).

set.seed(2019)
target_df <- df[sample(nrow(df), 2500, replace = FALSE), ]

#Are there at least 62 students subgroup of intrest in the random sample?

library(dplyr) #loads a package useful for data manipulation

target_df %>% count(pared)
target_df %>% count(sdracem) #tells us that there are not enough AINA students (just 39)
target_df %>% count(lep)

#NB: Students who identify with two or more races are not represented in the example data.
# Thus, this subgroup is not included in this simulation study. 

#  Here I will command R to randomly sample an extra 39 AINA students and then append those extra 
#   39 AINA students to the "target_df"
extra_AINA <- df %>% 
  filter(sdracem=="Amer Ind/Alaska Natv") %>%
  sample_n(39, replace = FALSE)

target_df <- rbind(target_df, extra_AINA)

#Did I resample any of the same AINA students?
tab <- target_df %>%
        filter(sdracem=="Amer Ind/Alaska Natv") %>%
        count(ID) %>%
        filter(n > 1)

print(tab$ID)

#ANSWER: Yes, I resampled ID#s 2413, 2753, 5258, 7298, 11786, 15158, 16194 (7 AINA students)

#Remove duplicates from "target_df"
target_df <- target_df[ which(target_df$ID!=2413),]
target_df <- target_df[ which(target_df$ID!=2753),]
target_df <- target_df[ which(target_df$ID!=5258),]
target_df <- target_df[ which(target_df$ID!=7298),]
target_df <- target_df[ which(target_df$ID!=11786),]
target_df <- target_df[ which(target_df$ID!=15158),]
target_df <- target_df[ which(target_df$ID!=16194),]


target_df %>% count(sdracem)
#There are now 70 AINA students in "target_df"


# 4) Calculate means and standard deviation of estimands

SD(subset(target_df, pared == "Did not finish H.S."), variable = "composite")
SD(subset(target_df, pared == "Graduated H.S."), variable = "composite")
SD(subset(target_df, pared == "Some ed after H.S."), variable = "composite")
SD(subset(target_df, pared == "Graduated college"), variable = "composite")

NHS_target_mean <- 263.2467
NHS_SD <- 31.80236
HS_target_mean <- 266.4621
HS_SD <- 30.60569
SBA_target_mean <- 278.4232
SBA_SD <- 33.0456
BA_target_mean <- 288.9831
BA_SD <- 35.62842

SD(subset(target_df, sdracem == "Black"), variable = "composite")
SD(subset(target_df, sdracem == "Hispanic"), variable = "composite")
SD(subset(target_df, sdracem == "Asian/Pacific Island"), variable = "composite")
SD(subset(target_df, sdracem == "Amer Ind/Alaska Natv"), variable = "composite")

B_target_mean <- 254.8383
B_SD <- 32.55956
H_target_mean <- 260.9449
H_SD <- 33.51711
API_target_mean <- 292.6967
API_SD <- 36.84079
AINA_target_mean <- 272.8829
AINA_SD <- 32.24216

SD(subset(target_df, lep == "Yes"), variable = "composite")

EL_target_mean <- 240.929
EL_SD <- 34.70914

# 5) Remove "target_df" from "df" to create a "test_df"

#testing

test_df <- rbind(df, target_df)

dup_tab <- table(test_df$ID) 
dup_tab <- as.data.frame(dup_tab)
names(dup_tab)[1] <- 'ID'

test_df <- merge(test_df, dup_tab, by="ID") 

test_df <- subset(test_df, Freq == 1) 

# 6) Repeatedly draw samples of size equal to those used for corresponding target intervals per subgroup from 
#     the pseudo-population; example data from EdSurvey package (N=16,915).

NHS_n <- 192
HS_n <- 446
SBA_n <- 445
BA_n <- 1091
B_n <- 491
H_n <- 360
API_n <- 110
AINA_n <- 70
EL_n <- 143


test_df_NHS <- subset(test_df, pared == "Did not finish H.S.")
test_df_HS <- subset(test_df, pared == "Graduated H.S.")
test_df_SBA <- subset(test_df, pared == "Some ed after H.S.")
test_df_BA <- subset(test_df, pared == "Graduated college")
test_df_B <- subset(test_df, sdracem == "Black")
test_df_H <- subset(test_df, sdracem == "Hispanic")
test_df_API <- subset(test_df, sdracem == "Asian/Pacific Island")
test_df_AINA <- subset(test_df, sdracem == "Amer Ind/Alaska Natv")
test_df_EL <- subset(test_df, lep == "Yes")


NHS_means <- replicate(1000, {
  random_sample <- test_df_NHS[sample(nrow(test_df_NHS), NHS_n, replace=F), ]
  results <- edsurveyTable(composite ~ 1, data = random_sample)
  results[["data"]][["MEAN"]]
  })

HS_means <- replicate(1000, {
  random_sample <- test_df_HS[sample(nrow(test_df_HS), HS_n, replace=F), ]
  results <- edsurveyTable(composite ~ 1, data = random_sample)
  results[["data"]][["MEAN"]]
})

SBA_means <- replicate(1000, {
  random_sample <- test_df_SBA[sample(nrow(test_df_SBA), SBA_n, replace=F), ]
  results <- edsurveyTable(composite ~ 1, data = random_sample)
  results[["data"]][["MEAN"]]
})

BA_means <- replicate(1000, {
  random_sample <- test_df_BA[sample(nrow(test_df_BA), BA_n, replace=F), ]
  results <- edsurveyTable(composite ~ 1, data = random_sample)
  results[["data"]][["MEAN"]]
})

B_means <- replicate(1000, {
  random_sample <- test_df_B[sample(nrow(test_df_B), B_n, replace=F), ]
  results <- edsurveyTable(composite ~ 1, data = random_sample)
  results[["data"]][["MEAN"]]
})

H_means <- replicate(1000, {
  random_sample <- test_df_H[sample(nrow(test_df_H), H_n, replace=F), ]
  results <- edsurveyTable(composite ~ 1, data = random_sample)
  results[["data"]][["MEAN"]]
})

API_means <- replicate(1000, {
  random_sample <- test_df_API[sample(nrow(test_df_API), API_n, replace=F), ]
  results <- edsurveyTable(composite ~ 1, data = random_sample)
  results[["data"]][["MEAN"]]
})

AINA_means <- replicate(1000, {
  random_sample <- test_df_AINA[sample(nrow(test_df_AINA), AINA_n, replace=F), ]
  results <- edsurveyTable(composite ~ 1, data = random_sample)
  results[["data"]][["MEAN"]]
})

EL_means <- replicate(1000, {
  random_sample <- test_df_EL[sample(nrow(test_df_EL), EL_n, replace=F), ]
  results <- edsurveyTable(composite ~ 1, data = random_sample)
  results[["data"]][["MEAN"]]
})


#Bind means into a single dataframe

All_means <- cbind(NHS_means, HS_means)
All_means <- cbind(All_means, SBA_means)
All_means <- cbind(All_means, BA_means)
All_means <- cbind(All_means, B_means)
All_means <- cbind(All_means, H_means)
All_means <- cbind(All_means, API_means)
All_means <- cbind(All_means, AINA_means)
All_means <- cbind(All_means, EL_means)

All_means <- as.data.frame(All_means)

colnames(All_means) <- c("NHS", "HS", "SBA", "BA", "B", "H", "API", "AINA", "EL")

#Save dataset so that I do not need to execute time-consuming code if log out.

write.csv(All_means, "C:/Users/David/Google Drive/NAEP/Dissertation Code/All_test_means.csv")


# 7) Create variables indicating absolute mean standaridized difference between means from sets of 1000 and the 
# corresponding target means (with sd of corresponding target sample used as denominator [Braun's d])

All_means <- All_means %>%
  mutate(NHS_MSD = abs((NHS - NHS_target_mean)/ NHS_SD),
         HS_MSD = abs((HS - HS_target_mean)/ HS_SD),
         SBA_MSD = abs((SBA - SBA_target_mean)/ SBA_SD),
         BA_MSD = abs((BA - BA_target_mean)/ BA_SD),
         B_MSD = abs((B - B_target_mean)/ B_SD),
         H_MSD = abs((H - H_target_mean)/ H_SD),
         API_MSD = abs((API - API_target_mean)/ API_SD),
         AINA_MSD = abs((AINA - AINA_target_mean)/ AINA_SD),
         EL_MSD = abs((EL - EL_target_mean)/ EL_SD))
                      
        




# 8) Compute "hit rates," proportion of times Braun's d is equal or less than 0.2
Hit_rates <- All_means %>% summarize(NHS_hit_rate = mean(NHS_MSD <= 0.2),
                                     HS_hit_rate = mean(HS_MSD <= 0.2),
                                     SBA_hit_rate = mean(SBA_MSD <= 0.2),
                                     BA_hit_rate = mean(BA_MSD <= 0.2),
                                     B_hit_rate = mean(B_MSD <= 0.2),
                                     H_hit_rate = mean(H_MSD <= 0.2),
                                     API_hit_rate = mean(API_MSD <= 0.2),
                                     AINA_hit_rate = mean(AINA_MSD <= 0.2),
                                     EL_hit_rate = mean(EL_MSD <= 0.2))

# 9) Wrangle all informative statistics from this simulation study into a summary table

subgroup <- c("NHS", "HS", "SBA", "BA", "B", "H", "API", "AINA", "EL")
target_x <- c(NHS_target_mean, HS_target_mean, SBA_target_mean, BA_target_mean, B_target_mean,
              H_target_mean, API_target_mean, AINA_target_mean, EL_target_mean)
target_sd <- c(NHS_SD, HS_SD, SBA_SD, BA_SD, B_SD,
               H_SD, API_SD, AINA_SD, EL_SD)
n <- c(NHS_n, HS_n, SBA_n, BA_n, B_n,
              H_n, API_n, AINA_n, EL_n)
Hit_rates <- t(Hit_rates)


summary_table <- cbind(subgroup, target_x)
summary_table <- cbind(summary_table, target_sd)
summary_table <- cbind(summary_table, n)
summary_table <- cbind(summary_table, Hit_rates)
summary_table <- as.data.frame(summary_table)
rownames(summary_table) <- 1:nrow(summary_table)

summary_table <- summary_table %>%
  rename(target_x = V2,
         target_sd = V3,
         n = V4,
         hit_rate = V5,
         subgroup = V1)


# 10) Export summary table

write.csv(summary_table, "[filepath]/sim-study-MSD-summary-table.csv")
                        
                        
              
                    

                        