#Chapter 3 - Calculation of median standard deviation of states 
# of subgroups of interest (as reported by NAEP)



#Import data
pared <- read_excel("[filepath]/NDE_DataPull_Mean_SD_042120.xls", 
                    sheet = "Pared", range = "A9:E269")
race_eth <- read_excel("[filepath]/NDE_DataPull_Mean_SD_042120.xls", 
                       sheet = "RaceEth_Trend", range = "A9:E321")
ELs <- read_excel("[filepath]/NDE_DataPull_Mean_SD_042120.xls", 
                  sheet = "ELs", range = "A9:E113")


#Data Cleaning

library(tidyverse)

pared <- pared[, -1]
pared <- pared[, -3]
pared <- pared %>%
  rename(subgroup = "Parental education level, from 2 questions")

race_eth <- race_eth[, -1]
race_eth <- race_eth[, -3]
race_eth <- race_eth %>%
  rename(subgroup = "Race/ethnicity used to report trends, school-reported")

ELs <- ELs[, -1]
ELs <- ELs[, -3]
ELs <- ELs %>%
  rename(subgroup = "Status as English Language Learner, 2 categories")

#RBIND

dat <- rbind(pared, race_eth, ELs)

#Filter out DC and DODEA

dat <- dat %>%
  filter(Jurisdiction != "District of Columbia") %>%
  filter(Jurisdiction != "DoDEA") %>%
  rename(sd = `Standard deviation`)

#Change class of variables

dat$sd <- as.numeric(dat$sd)

#Compute medians for subgroups of interest

NHS <- dat %>%
  filter(subgroup == "Did not finish high school")
median(NHS$sd, na.rm = T) 

HS <- dat %>%
  filter(subgroup == "Graduated high school")
median(HS$sd, na.rm = T) 

SBA <- dat %>%
  filter(subgroup == "Some education after high school")
median(SBA$sd, na.rm = T) 

BA <- dat %>%
  filter(subgroup == "Graduated college")
median(BA$sd, na.rm = T) 

B <- dat %>%
  filter(subgroup == "Black")
median(B$sd, na.rm = T) 

H <- dat %>%
  filter(subgroup == "Hispanic")
median(H$sd, na.rm = T) 

API <- dat %>%
  filter(subgroup == "Asian/Pacific Islander")
median(API$sd, na.rm = T) 

AINA <- dat %>%
  filter(subgroup == "American Indian/Alaska Native")
median(AINA$sd, na.rm = T) 

TP <- dat %>%
  filter(subgroup == "Two or more races")
median(TP$sd, na.rm = T) 

EL <- dat %>%
  filter(subgroup == "ELL")
median(EL$sd, na.rm = T) 

  
