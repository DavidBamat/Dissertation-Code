####################################################################################################
#IMPORTING DIRECT ESTIMATE INFORMATION FROM STATA INTO R AND POOLING PARAMETER ESTIMATES 
#(CHAPTER 4)
####################################################################################################



#This file takes the "[subgroup-state]".dta files, which each contain 20 mean estimates
# and 20 mean variance estimates (one for each set of plausible values from the restricted-use data),
# and then pools these mean and mean variance estimates according to Rubin's Rule's () to form 
# pooled mean and mean variance estimates.

library(haven)

#####NHS#####

#write function that pools variance and than takes the sqrt (the se)
pooled_se <- function(x){
  within_var <- mean(x)
  between_var <- var(x)
  sampling_var <- between_var/20
  sqrt(sum(within_var, between_var, sampling_var))
}

#write function that reads .dta file with mean plausible values and 
# associated mean variance estimates, and returns a mean and se.

mean_and_se <- function(x) {
  mean_de <- apply(x[,1], 2, mean)
  se_de <- apply(x[,2], 2, pooled_se)
  print(c("x", mean_de, se_de))
}

#Import Data for subgroup
NHS_AL <- read_dta("[filepath]/NHS-AL.dta")
NHS_AR <- read_dta("[filepath]/NHS-AR.dta")
NHS_AZ <- read_dta("[filepath]/NHS-AZ.dta")
NHS_CA <- read_dta("[filepath]/NHS-CA.dta")
NHS_CO <- read_dta("[filepath]/NHS-CO.dta")
NHS_CT <- read_dta("[filepath]/NHS-CT.dta")
NHS_DE <- read_dta("[filepath]/NHS-DE.dta")
NHS_FL <- read_dta("[filepath]/NHS-FL.dta")
NHS_GA <- read_dta("[filepath]/NHS-GA.dta")
NHS_HI <- read_dta("[filepath]/NHS-HI.dta")
NHS_IA <- read_dta("[filepath]/NHS-IA.dta")
NHS_ID <- read_dta("[filepath]/NHS-ID.dta")
NHS_IL <- read_dta("[filepath]/NHS-IL.dta")
NHS_IN <- read_dta("[filepath]/NHS-IN.dta")
NHS_KS <- read_dta("[filepath]/NHS-KS.dta")
NHS_KY <- read_dta("[filepath]/NHS-KY.dta")
NHS_LA <- read_dta("[filepath]/NHS-LA.dta")
NHS_MA <- read_dta("[filepath]/NHS-MA.dta")
NHS_MD <- read_dta("[filepath]/NHS-MD.dta")
NHS_ME <- read_dta("[filepath]/NHS-ME.dta")
NHS_MI <- read_dta("[filepath]/NHS-MI.dta")
NHS_MN <- read_dta("[filepath]/NHS-MN.dta")
NHS_MO <- read_dta("[filepath]/NHS-MO.dta")
NHS_MS <- read_dta("[filepath]/NHS-MS.dta")
NHS_MT <- read_dta("[filepath]/NHS-MT.dta")
NHS_NC <- read_dta("[filepath]/NHS-NC.dta")
NHS_ND <- read_dta("[filepath]/NHS-ND.dta")
NHS_NE <- read_dta("[filepath]/NHS-NE.dta")
NHS_NH <- read_dta("[filepath]/NHS-NH.dta")
NHS_NJ <- read_dta("[filepath]/NHS-NJ.dta")
NHS_NM <- read_dta("[filepath]/NHS-NM.dta")
NHS_NV <- read_dta("[filepath]/NHS-NV.dta")
NHS_NY <- read_dta("[filepath]/NHS-NY.dta")
NHS_OH <- read_dta("[filepath]/NHS-OH.dta")
NHS_OK <- read_dta("[filepath]/NHS-OK.dta")
NHS_OR <- read_dta("[filepath]/NHS-OR.dta")
NHS_PA <- read_dta("[filepath]/NHS-PA.dta")
NHS_RI <- read_dta("[filepath]/NHS-RI.dta")
NHS_SC <- read_dta("[filepath]/NHS-SC.dta")
NHS_SD <- read_dta("[filepath]/NHS-SD.dta")
NHS_TN <- read_dta("[filepath]/NHS-TN.dta")
NHS_TX <- read_dta("[filepath]/NHS-TX.dta")
NHS_VA <- read_dta("[filepath]/NHS-VA.dta")
NHS_VT <- read_dta("[filepath]/NHS-VT.dta")
NHS_WA <- read_dta("[filepath]/NHS-WA.dta")
NHS_WI <- read_dta("[filepath]/NHS-WI.dta")
NHS_WV <- read_dta("[filepath]/NHS-WV.dta")
NHS_WY <- read_dta("[filepath]/NHS-WY.dta")


#apply mean_and_se() function to the imported data sets
AL <- mean_and_se(NHS_AL)
AR <- mean_and_se(NHS_AR)
AZ <- mean_and_se(NHS_AZ)
CA <- mean_and_se(NHS_CA)
CO <- mean_and_se(NHS_CO)
CT <- mean_and_se(NHS_CT)
DE <- mean_and_se(NHS_DE)
FL <- mean_and_se(NHS_FL)
GA <- mean_and_se(NHS_GA)
HI <- mean_and_se(NHS_HI)
IA <- mean_and_se(NHS_IA)
ID <- mean_and_se(NHS_ID)
IL <- mean_and_se(NHS_IL)
IN <- mean_and_se(NHS_IN)
KS <- mean_and_se(NHS_KS)
KY <- mean_and_se(NHS_KY)
LA <- mean_and_se(NHS_LA)
MA <- mean_and_se(NHS_MA)
MD <- mean_and_se(NHS_MD)
ME <- mean_and_se(NHS_ME)
MI <- mean_and_se(NHS_MI)
MN <- mean_and_se(NHS_MN)
MO <- mean_and_se(NHS_MO)
MS <- mean_and_se(NHS_MS)
MT <- mean_and_se(NHS_MT)
NC <- mean_and_se(NHS_NC)
ND <- mean_and_se(NHS_ND)
NE <- mean_and_se(NHS_NE)
NH <- mean_and_se(NHS_NH)
NJ <- mean_and_se(NHS_NJ)
NM <- mean_and_se(NHS_NM)
NV <- mean_and_se(NHS_NV)
NY <- mean_and_se(NHS_NY)
OH <- mean_and_se(NHS_OH)
OK <- mean_and_se(NHS_OK)
OR <- mean_and_se(NHS_OR)
PA <- mean_and_se(NHS_PA)
RI <- mean_and_se(NHS_RI)
SC <- mean_and_se(NHS_SC)
SD <- mean_and_se(NHS_SD)
TN <- mean_and_se(NHS_TN)
TX <- mean_and_se(NHS_TX)
VA <- mean_and_se(NHS_VA)
VT <- mean_and_se(NHS_VT)
WA <- mean_and_se(NHS_WA)
WI <- mean_and_se(NHS_WI)
WV <- mean_and_se(NHS_WV)
WY <- mean_and_se(NHS_WY)


#Row bind results
NHS_tv_df_de_results <- rbind(AL, AR, AZ, CA, CO, CT, DE, FL, GA, HI,
                              IA, ID, IL, IN, KS, KY, LA, MA, MD, ME, 
                              MI, MN, MO, MS, MT, NC, ND, NE, NH, NJ,
                              NM, NV, NY, OH, OK, OR, PA, RI, SC, SD, 
                              TN, TX, VA, VT, WA, WI, WV, WY)

#Define object as a data frame
NHS_tv_df_de_results <- as.data.frame(NHS_tv_df_de_results)

#Change variable names                              
names(NHS_tv_df_de_results) <- c("State", "NHS_direct_est", "NHS_se")

#Write state abbreviations into the "State" variable
NHS_tv_df_de_results$State <- c("AL", "AR", "AZ", "CA", "CO", "CT", "DE",
                                "FL", "GA", "HI", "IA", "ID", "IL", "IN",
                                "KS", "KY", "LA", "MA", "MD", "ME", "MI",
                                "MN", "MO", "MS", "MT", "NC", "ND", "NE", 
                                "NH", "NJ", "NM", "NV", "NY", "OH", "OK",
                                "OR", "PA", "RI", "SC", "SD", "TN", "TX",
                                "VA", "VT", "WA", "WI", "WV", "WY")

#Export (save) data set
write.csv(NHS_tv_df_de_results, 
          "[filepath]/NHS_tv_df_de_results.csv")

#Free up memory
rm(list = ls())

#####HS#####
#write function that pools variance and than takes the sqrt (the se)
pooled_se <- function(x){
  within_var <- mean(x)
  between_var <- var(x)
  sampling_var <- between_var/20
  sqrt(sum(within_var, between_var, sampling_var))
}
#write function that reads .dta file with mean plausible values and 
# associated mean variance estimates, and returns a mean and se.

mean_and_se <- function(x) {
  mean_de <- apply(x[,1], 2, mean)
  se_de <- apply(x[,2], 2, pooled_se)
  print(c("x", mean_de, se_de))
}

#Import Data for subgroup
HS_AL <- read_dta("[filepath]/HS-AL.dta")
HS_AR <- read_dta("[filepath]/HS-AR.dta")
HS_AZ <- read_dta("[filepath]/HS-AZ.dta")
HS_CA <- read_dta("[filepath]/HS-CA.dta")
HS_CO <- read_dta("[filepath]/HS-CO.dta")
HS_CT <- read_dta("[filepath]/HS-CT.dta")
HS_DE <- read_dta("[filepath]/HS-DE.dta")
HS_FL <- read_dta("[filepath]/HS-FL.dta")
HS_GA <- read_dta("[filepath]/HS-GA.dta")
HS_HI <- read_dta("[filepath]/HS-HI.dta")
HS_IA <- read_dta("[filepath]/HS-IA.dta")
HS_ID <- read_dta("[filepath]/HS-ID.dta")
HS_IL <- read_dta("[filepath]/HS-IL.dta")
HS_IN <- read_dta("[filepath]/HS-IN.dta")
HS_KS <- read_dta("[filepath]/HS-KS.dta")
HS_KY <- read_dta("[filepath]/HS-KY.dta")
HS_LA <- read_dta("[filepath]/HS-LA.dta")
HS_MA <- read_dta("[filepath]/HS-MA.dta")
HS_MD <- read_dta("[filepath]/HS-MD.dta")
HS_ME <- read_dta("[filepath]/HS-ME.dta")
HS_MI <- read_dta("[filepath]/HS-MI.dta")
HS_MN <- read_dta("[filepath]/HS-MN.dta")
HS_MO <- read_dta("[filepath]/HS-MO.dta")
HS_MS <- read_dta("[filepath]/HS-MS.dta")
HS_MT <- read_dta("[filepath]/HS-MT.dta")
HS_NC <- read_dta("[filepath]/HS-NC.dta")
HS_ND <- read_dta("[filepath]/HS-ND.dta")
HS_NE <- read_dta("[filepath]/HS-NE.dta")
HS_NH <- read_dta("[filepath]/HS-NH.dta")
HS_NJ <- read_dta("[filepath]/HS-NJ.dta")
HS_NM <- read_dta("[filepath]/HS-NM.dta")
HS_NV <- read_dta("[filepath]/HS-NV.dta")
HS_NY <- read_dta("[filepath]/HS-NY.dta")
HS_OH <- read_dta("[filepath]/HS-OH.dta")
HS_OK <- read_dta("[filepath]/HS-OK.dta")
HS_OR <- read_dta("[filepath]/HS-OR.dta")
HS_PA <- read_dta("[filepath]/HS-PA.dta")
HS_RI <- read_dta("[filepath]/HS-RI.dta")
HS_SC <- read_dta("[filepath]/HS-SC.dta")
HS_SD <- read_dta("[filepath]/HS-SD.dta")
HS_TN <- read_dta("[filepath]/HS-TN.dta")
HS_TX <- read_dta("[filepath]/HS-TX.dta")
HS_VA <- read_dta("[filepath]/HS-VA.dta")
HS_VT <- read_dta("[filepath]/HS-VT.dta")
HS_WA <- read_dta("[filepath]/HS-WA.dta")
HS_WI <- read_dta("[filepath]/HS-WI.dta")
HS_WV <- read_dta("[filepath]/HS-WV.dta")
HS_WY <- read_dta("[filepath]/HS-WY.dta")


#apply mean_and_se() function to the imported data sets
AL <- mean_and_se(HS_AL)
AR <- mean_and_se(HS_AR)
AZ <- mean_and_se(HS_AZ)
CA <- mean_and_se(HS_CA)
CO <- mean_and_se(HS_CO)
CT <- mean_and_se(HS_CT)
DE <- mean_and_se(HS_DE)
FL <- mean_and_se(HS_FL)
GA <- mean_and_se(HS_GA)
HI <- mean_and_se(HS_HI)
IA <- mean_and_se(HS_IA)
ID <- mean_and_se(HS_ID)
IL <- mean_and_se(HS_IL)
IN <- mean_and_se(HS_IN)
KS <- mean_and_se(HS_KS)
KY <- mean_and_se(HS_KY)
LA <- mean_and_se(HS_LA)
MA <- mean_and_se(HS_MA)
MD <- mean_and_se(HS_MD)
ME <- mean_and_se(HS_ME)
MI <- mean_and_se(HS_MI)
MN <- mean_and_se(HS_MN)
MO <- mean_and_se(HS_MO)
MS <- mean_and_se(HS_MS)
MT <- mean_and_se(HS_MT)
NC <- mean_and_se(HS_NC)
ND <- mean_and_se(HS_ND)
NE <- mean_and_se(HS_NE)
NH <- mean_and_se(HS_NH)
NJ <- mean_and_se(HS_NJ)
NM <- mean_and_se(HS_NM)
NV <- mean_and_se(HS_NV)
NY <- mean_and_se(HS_NY)
OH <- mean_and_se(HS_OH)
OK <- mean_and_se(HS_OK)
OR <- mean_and_se(HS_OR)
PA <- mean_and_se(HS_PA)
RI <- mean_and_se(HS_RI)
SC <- mean_and_se(HS_SC)
SD <- mean_and_se(HS_SD)
TN <- mean_and_se(HS_TN)
TX <- mean_and_se(HS_TX)
VA <- mean_and_se(HS_VA)
VT <- mean_and_se(HS_VT)
WA <- mean_and_se(HS_WA)
WI <- mean_and_se(HS_WI)
WV <- mean_and_se(HS_WV)
WY <- mean_and_se(HS_WY)


#Row bind results
HS_tv_df_de_results <- rbind(AL, AR, AZ, CA, CO, CT, DE, FL, GA, HI,
                             IA, ID, IL, IN, KS, KY, LA, MA, MD, ME, 
                             MI, MN, MO, MS, MT, NC, ND, NE, NH, NJ,
                             NM, NV, NY, OH, OK, OR, PA, RI, SC, SD, 
                             TN, TX, VA, VT, WA, WI, WV, WY)

#Define object as a data frame
HS_tv_df_de_results <- as.data.frame(HS_tv_df_de_results)

#Change variable names                              
names(HS_tv_df_de_results) <- c("State", "HS_direct_est", "HS_se")
#will need to change variable names


#Write state abbreviations into the "State" variable
HS_tv_df_de_results$State <- c("AL", "AR", "AZ", "CA", "CO", "CT", "DE",
                               "FL", "GA", "HI", "IA", "ID", "IL", "IN",
                               "KS", "KY", "LA", "MA", "MD", "ME", "MI",
                               "MN", "MO", "MS", "MT", "NC", "ND", "NE", 
                               "NH", "NJ", "NM", "NV", "NY", "OH", "OK",
                               "OR", "PA", "RI", "SC", "SD", "TN", "TX",
                               "VA", "VT", "WA", "WI", "WV", "WY")

#Export (save) data set
write.csv(HS_tv_df_de_results, 
          "[filepath]/HS_tv_df_de_results.csv")

#Free up memory
rm(list = ls())

#####SBA#####

#write function that pools variance and than takes the sqrt (the se)
pooled_se <- function(x){
  within_var <- mean(x)
  between_var <- var(x)
  sampling_var <- between_var/20
  sqrt(sum(within_var, between_var, sampling_var))
}

#write function that reads .dta file with mean plausible values and 
# associated mean variance estimates, and returns a mean and se.

mean_and_se <- function(x) {
  mean_de <- apply(x[,1], 2, mean)
  se_de <- apply(x[,2], 2, pooled_se)
  print(c("x", mean_de, se_de))
}

#Import Data for subgroup

SBA_AL <- read_dta("[filepath]/SBA-AL.dta")
SBA_AR <- read_dta("[filepath]/SBA-AR.dta")
SBA_AZ <- read_dta("[filepath]/SBA-AZ.dta")
SBA_CA <- read_dta("[filepath]/SBA-CA.dta")
SBA_CO <- read_dta("[filepath]/SBA-CO.dta")
SBA_CT <- read_dta("[filepath]/SBA-CT.dta")
SBA_DE <- read_dta("[filepath]/SBA-DE.dta")
SBA_FL <- read_dta("[filepath]/SBA-FL.dta")
SBA_GA <- read_dta("[filepath]/SBA-GA.dta")
SBA_HI <- read_dta("[filepath]/SBA-HI.dta")
SBA_IA <- read_dta("[filepath]/SBA-IA.dta")
SBA_ID <- read_dta("[filepath]/SBA-ID.dta")
SBA_IL <- read_dta("[filepath]/SBA-IL.dta")
SBA_IN <- read_dta("[filepath]/SBA-IN.dta")
SBA_KS <- read_dta("[filepath]/SBA-KS.dta")
SBA_KY <- read_dta("[filepath]/SBA-KY.dta")
SBA_LA <- read_dta("[filepath]/SBA-LA.dta")
SBA_MA <- read_dta("[filepath]/SBA-MA.dta")
SBA_MD <- read_dta("[filepath]/SBA-MD.dta")
SBA_ME <- read_dta("[filepath]/SBA-ME.dta")
SBA_MI <- read_dta("[filepath]/SBA-MI.dta")
SBA_MN <- read_dta("[filepath]/SBA-MN.dta")
SBA_MO <- read_dta("[filepath]/SBA-MO.dta")
SBA_MS <- read_dta("[filepath]/SBA-MS.dta")
SBA_MT <- read_dta("[filepath]/SBA-MT.dta")
SBA_NC <- read_dta("[filepath]/SBA-NC.dta")
SBA_ND <- read_dta("[filepath]/SBA-ND.dta")
SBA_NE <- read_dta("[filepath]/SBA-NE.dta")
SBA_NH <- read_dta("[filepath]/SBA-NH.dta")
SBA_NJ <- read_dta("[filepath]/SBA-NJ.dta")
SBA_NM <- read_dta("[filepath]/SBA-NM.dta")
SBA_NV <- read_dta("[filepath]/SBA-NV.dta")
SBA_NY <- read_dta("[filepath]/SBA-NY.dta")
SBA_OH <- read_dta("[filepath]/SBA-OH.dta")
SBA_OK <- read_dta("[filepath]/SBA-OK.dta")
SBA_OR <- read_dta("[filepath]/SBA-OR.dta")
SBA_PA <- read_dta("[filepath]/SBA-PA.dta")
SBA_RI <- read_dta("[filepath]/SBA-RI.dta")
SBA_SC <- read_dta("[filepath]/SBA-SC.dta")
SBA_SD <- read_dta("[filepath]/SBA-SD.dta")
SBA_TN <- read_dta("[filepath]/SBA-TN.dta")
SBA_TX <- read_dta("[filepath]/SBA-TX.dta")
SBA_VA <- read_dta("[filepath]/SBA-VA.dta")
SBA_VT <- read_dta("[filepath]/SBA-VT.dta")
SBA_WA <- read_dta("[filepath]/SBA-WA.dta")
SBA_WI <- read_dta("[filepath]/SBA-WI.dta")
SBA_WV <- read_dta("[filepath]/SBA-WV.dta")
SBA_WY <- read_dta("[filepath]/SBA-WY.dta")


#apply mean_and_se() function to the imported data sets
AL <- mean_and_se(SBA_AL)
AR <- mean_and_se(SBA_AR)
AZ <- mean_and_se(SBA_AZ)
CA <- mean_and_se(SBA_CA)
CO <- mean_and_se(SBA_CO)
CT <- mean_and_se(SBA_CT)
DE <- mean_and_se(SBA_DE)
FL <- mean_and_se(SBA_FL)
GA <- mean_and_se(SBA_GA)
HI <- mean_and_se(SBA_HI)
IA <- mean_and_se(SBA_IA)
ID <- mean_and_se(SBA_ID)
IL <- mean_and_se(SBA_IL)
IN <- mean_and_se(SBA_IN)
KS <- mean_and_se(SBA_KS)
KY <- mean_and_se(SBA_KY)
LA <- mean_and_se(SBA_LA)
MA <- mean_and_se(SBA_MA)
MD <- mean_and_se(SBA_MD)
ME <- mean_and_se(SBA_ME)
MI <- mean_and_se(SBA_MI)
MN <- mean_and_se(SBA_MN)
MO <- mean_and_se(SBA_MO)
MS <- mean_and_se(SBA_MS)
MT <- mean_and_se(SBA_MT)
NC <- mean_and_se(SBA_NC)
ND <- mean_and_se(SBA_ND)
NE <- mean_and_se(SBA_NE)
NH <- mean_and_se(SBA_NH)
NJ <- mean_and_se(SBA_NJ)
NM <- mean_and_se(SBA_NM)
NV <- mean_and_se(SBA_NV)
NY <- mean_and_se(SBA_NY)
OH <- mean_and_se(SBA_OH)
OK <- mean_and_se(SBA_OK)
OR <- mean_and_se(SBA_OR)
PA <- mean_and_se(SBA_PA)
RI <- mean_and_se(SBA_RI)
SC <- mean_and_se(SBA_SC)
SD <- mean_and_se(SBA_SD)
TN <- mean_and_se(SBA_TN)
TX <- mean_and_se(SBA_TX)
VA <- mean_and_se(SBA_VA)
VT <- mean_and_se(SBA_VT)
WA <- mean_and_se(SBA_WA)
WI <- mean_and_se(SBA_WI)
WV <- mean_and_se(SBA_WV)
WY <- mean_and_se(SBA_WY)


#Row bind results
SBA_tv_df_de_results <- rbind(AL, AR, AZ, CA, CO, CT, DE, FL, GA, HI,
                              IA, ID, IL, IN, KS, KY, LA, MA, MD, ME, 
                              MI, MN, MO, MS, MT, NC, ND, NE, NH, NJ,
                              NM, NV, NY, OH, OK, OR, PA, RI, SC, SD, 
                              TN, TX, VA, VT, WA, WI, WV, WY)

#Define object as a data frame
SBA_tv_df_de_results <- as.data.frame(SBA_tv_df_de_results)

#Change variable names                              
names(SBA_tv_df_de_results) <- c("State", "SBA_direct_est", "SBA_se")
#will need to change variable names

#Write state abbreviations into the "State" variable
SBA_tv_df_de_results$State <- c("AL", "AR", "AZ", "CA", "CO", "CT", "DE",
                                "FL", "GA", "HI", "IA", "ID", "IL", "IN",
                                "KS", "KY", "LA", "MA", "MD", "ME", "MI",
                                "MN", "MO", "MS", "MT", "NC", "ND", "NE", 
                                "NH", "NJ", "NM", "NV", "NY", "OH", "OK",
                                "OR", "PA", "RI", "SC", "SD", "TN", "TX",
                                "VA", "VT", "WA", "WI", "WV", "WY")

#Export (save) data set
write.csv(SBA_tv_df_de_results, 
          "[filepath]/SBA_tv_df_de_results.csv")

#Free up memory
rm(list = ls())

#####BA#####

#write function that pools variance and than takes the sqrt (the se)
pooled_se <- function(x){
  within_var <- mean(x)
  between_var <- var(x)
  sampling_var <- between_var/20
  sqrt(sum(within_var, between_var, sampling_var))
}

#write function that reads .dta file with mean plausible values and 
# associated mean variance estimates, and returns a mean and se.

mean_and_se <- function(x) {
  mean_de <- apply(x[,1], 2, mean)
  se_de <- apply(x[,2], 2, pooled_se)
  print(c("x", mean_de, se_de))
}



#Import Data for subgroup

BA_AL <- read_dta("[filepath]/BA-AL.dta")
BA_AR <- read_dta("[filepath]/BA-AR.dta")
BA_AZ <- read_dta("[filepath]/BA-AZ.dta")
BA_CA <- read_dta("[filepath]/BA-CA.dta")
BA_CO <- read_dta("[filepath]/BA-CO.dta")
BA_CT <- read_dta("[filepath]/BA-CT.dta")
BA_DE <- read_dta("[filepath]/BA-DE.dta")
BA_FL <- read_dta("[filepath]/BA-FL.dta")
BA_GA <- read_dta("[filepath]/BA-GA.dta")
BA_HI <- read_dta("[filepath]/BA-HI.dta")
BA_IA <- read_dta("[filepath]/BA-IA.dta")
BA_ID <- read_dta("[filepath]/BA-ID.dta")
BA_IL <- read_dta("[filepath]/BA-IL.dta")
BA_IN <- read_dta("[filepath]/BA-IN.dta")
BA_KS <- read_dta("[filepath]/BA-KS.dta")
BA_KY <- read_dta("[filepath]/BA-KY.dta")
BA_LA <- read_dta("[filepath]/BA-LA.dta")
BA_MA <- read_dta("[filepath]/BA-MA.dta")
BA_MD <- read_dta("[filepath]/BA-MD.dta")
BA_ME <- read_dta("[filepath]/BA-ME.dta")
BA_MI <- read_dta("[filepath]/BA-MI.dta")
BA_MN <- read_dta("[filepath]/BA-MN.dta")
BA_MO <- read_dta("[filepath]/BA-MO.dta")
BA_MS <- read_dta("[filepath]/BA-MS.dta")
BA_MT <- read_dta("[filepath]/BA-MT.dta")
BA_NC <- read_dta("[filepath]/BA-NC.dta")
BA_ND <- read_dta("[filepath]/BA-ND.dta")
BA_NE <- read_dta("[filepath]/BA-NE.dta")
BA_NH <- read_dta("[filepath]/BA-NH.dta")
BA_NJ <- read_dta("[filepath]/BA-NJ.dta")
BA_NM <- read_dta("[filepath]/BA-NM.dta")
BA_NV <- read_dta("[filepath]/BA-NV.dta")
BA_NY <- read_dta("[filepath]/BA-NY.dta")
BA_OH <- read_dta("[filepath]/BA-OH.dta")
BA_OK <- read_dta("[filepath]/BA-OK.dta")
BA_OR <- read_dta("[filepath]/BA-OR.dta")
BA_PA <- read_dta("[filepath]/BA-PA.dta")
BA_RI <- read_dta("[filepath]/BA-RI.dta")
BA_SC <- read_dta("[filepath]/BA-SC.dta")
BA_SD <- read_dta("[filepath]/BA-SD.dta")
BA_TN <- read_dta("[filepath]/BA-TN.dta")
BA_TX <- read_dta("[filepath]/BA-TX.dta")
BA_VA <- read_dta("[filepath]/BA-VA.dta")
BA_VT <- read_dta("[filepath]/BA-VT.dta")
BA_WA <- read_dta("[filepath]/BA-WA.dta")
BA_WI <- read_dta("[filepath]/BA-WI.dta")
BA_WV <- read_dta("[filepath]/BA-WV.dta")
BA_WY <- read_dta("[filepath]/BA-WY.dta")


#apply mean_and_se() function to the imported data sets
AL <- mean_and_se(BA_AL)
AR <- mean_and_se(BA_AR)
AZ <- mean_and_se(BA_AZ)
CA <- mean_and_se(BA_CA)
CO <- mean_and_se(BA_CO)
CT <- mean_and_se(BA_CT)
DE <- mean_and_se(BA_DE)
FL <- mean_and_se(BA_FL)
GA <- mean_and_se(BA_GA)
HI <- mean_and_se(BA_HI)
IA <- mean_and_se(BA_IA)
ID <- mean_and_se(BA_ID)
IL <- mean_and_se(BA_IL)
IN <- mean_and_se(BA_IN)
KS <- mean_and_se(BA_KS)
KY <- mean_and_se(BA_KY)
LA <- mean_and_se(BA_LA)
MA <- mean_and_se(BA_MA)
MD <- mean_and_se(BA_MD)
ME <- mean_and_se(BA_ME)
MI <- mean_and_se(BA_MI)
MN <- mean_and_se(BA_MN)
MO <- mean_and_se(BA_MO)
MS <- mean_and_se(BA_MS)
MT <- mean_and_se(BA_MT)
NC <- mean_and_se(BA_NC)
ND <- mean_and_se(BA_ND)
NE <- mean_and_se(BA_NE)
NH <- mean_and_se(BA_NH)
NJ <- mean_and_se(BA_NJ)
NM <- mean_and_se(BA_NM)
NV <- mean_and_se(BA_NV)
NY <- mean_and_se(BA_NY)
OH <- mean_and_se(BA_OH)
OK <- mean_and_se(BA_OK)
OR <- mean_and_se(BA_OR)
PA <- mean_and_se(BA_PA)
RI <- mean_and_se(BA_RI)
SC <- mean_and_se(BA_SC)
SD <- mean_and_se(BA_SD)
TN <- mean_and_se(BA_TN)
TX <- mean_and_se(BA_TX)
VA <- mean_and_se(BA_VA)
VT <- mean_and_se(BA_VT)
WA <- mean_and_se(BA_WA)
WI <- mean_and_se(BA_WI)
WV <- mean_and_se(BA_WV)
WY <- mean_and_se(BA_WY)


#Row bind results
BA_tv_df_de_results <- rbind(AL, AR, AZ, CA, CO, CT, DE, FL, GA, HI,
                             IA, ID, IL, IN, KS, KY, LA, MA, MD, ME, 
                             MI, MN, MO, MS, MT, NC, ND, NE, NH, NJ,
                             NM, NV, NY, OH, OK, OR, PA, RI, SC, SD, 
                             TN, TX, VA, VT, WA, WI, WV, WY)

#Define object as a data frame
BA_tv_df_de_results <- as.data.frame(BA_tv_df_de_results)

#Change variable names                              
names(BA_tv_df_de_results) <- c("State", "BA_direct_est", "BA_se")
#will need to change variable names

#Write state abbreviations into the "State" variable
BA_tv_df_de_results$State <- c("AL", "AR", "AZ", "CA", "CO", "CT", "DE",
                               "FL", "GA", "HI", "IA", "ID", "IL", "IN",
                               "KS", "KY", "LA", "MA", "MD", "ME", "MI",
                               "MN", "MO", "MS", "MT", "NC", "ND", "NE", 
                               "NH", "NJ", "NM", "NV", "NY", "OH", "OK",
                               "OR", "PA", "RI", "SC", "SD", "TN", "TX",
                               "VA", "VT", "WA", "WI", "WV", "WY")



#Export (save) data set
write.csv(BA_tv_df_de_results, 
          "[filepath]/BA_tv_df_de_results.csv")

#Free up memory
rm(list = ls())

#####B#####

#write function that pools variance and than takes the sqrt (the se)
pooled_se <- function(x){
  within_var <- mean(x)
  between_var <- var(x)
  sampling_var <- between_var/20
  sqrt(sum(within_var, between_var, sampling_var))
}

#write function that reads .dta file with mean plausible values and 
# associated mean variance estimates, and returns a mean and se.

mean_and_se <- function(x) {
  mean_de <- apply(x[,1], 2, mean)
  se_de <- apply(x[,2], 2, pooled_se)
  print(c("x", mean_de, se_de))
}

#Import Data for subgroup
B_AL <- read_dta("[filepath]/B-AL.dta")
B_AK <- read_dta("[filepath]/B-AK.dta")
B_AR <- read_dta("[filepath]/B-AR.dta")
B_AZ <- read_dta("[filepath]/B-AZ.dta")
B_CA <- read_dta("[filepath]/B-CA.dta")
B_CO <- read_dta("[filepath]/B-CO.dta")
B_CT <- read_dta("[filepath]/B-CT.dta")
B_DE <- read_dta("[filepath]/B-DE.dta")
B_FL <- read_dta("[filepath]/B-FL.dta")
B_GA <- read_dta("[filepath]/B-GA.dta")
B_IA <- read_dta("[filepath]/B-IA.dta")
B_IL <- read_dta("[filepath]/B-IL.dta")
B_IN <- read_dta("[filepath]/B-IN.dta")
B_KS <- read_dta("[filepath]/B-KS.dta")
B_KY <- read_dta("[filepath]/B-KY.dta")
B_LA <- read_dta("[filepath]/B-LA.dta")
B_MA <- read_dta("[filepath]/B-MA.dta")
B_MD <- read_dta("[filepath]/B-MD.dta")
B_MI <- read_dta("[filepath]/B-MI.dta")
B_MN <- read_dta("[filepath]/B-MN.dta")
B_MO <- read_dta("[filepath]/B-MO.dta")
B_MS <- read_dta("[filepath]/B-MS.dta")
B_NC <- read_dta("[filepath]/B-NC.dta")
B_ND <- read_dta("[filepath]/B-ND.dta")
B_NE <- read_dta("[filepath]/B-NE.dta")
B_NJ <- read_dta("[filepath]/B-NJ.dta")
B_NV <- read_dta("[filepath]/B-NV.dta")
B_NY <- read_dta("[filepath]/B-NY.dta")
B_OH <- read_dta("[filepath]/B-OH.dta")
B_OK <- read_dta("[filepath]/B-OK.dta")
B_PA <- read_dta("[filepath]/B-PA.dta")
B_RI <- read_dta("[filepath]/B-RI.dta")
B_SC <- read_dta("[filepath]/B-SC.dta")
B_TN <- read_dta("[filepath]/B-TN.dta")
B_TX <- read_dta("[filepath]/B-TX.dta")
B_VA <- read_dta("[filepath]/B-VA.dta")
B_WA <- read_dta("[filepath]/B-WA.dta")
B_WI <- read_dta("[filepath]/B-WI.dta")
B_WV <- read_dta("[filepath]/B-WV.dta")

#apply mean_and_se() function to the imported data sets
AL <- mean_and_se(B_AL)
AK <- mean_and_se(B_AK)
AR <- mean_and_se(B_AR)
AZ <- mean_and_se(B_AZ)
CA <- mean_and_se(B_CA)
CO <- mean_and_se(B_CO)
CT <- mean_and_se(B_CT)
DE <- mean_and_se(B_DE)
FL <- mean_and_se(B_FL)
GA <- mean_and_se(B_GA)
IA <- mean_and_se(B_IA)
IL <- mean_and_se(B_IL)
IN <- mean_and_se(B_IN)
KS <- mean_and_se(B_KS)
KY <- mean_and_se(B_KY)
LA <- mean_and_se(B_LA)
MA <- mean_and_se(B_MA)
MD <- mean_and_se(B_MD)
MI <- mean_and_se(B_MI)
MN <- mean_and_se(B_MN)
MO <- mean_and_se(B_MO)
MS <- mean_and_se(B_MS)
NC <- mean_and_se(B_NC)
ND <- mean_and_se(B_ND)
NE <- mean_and_se(B_NE)
NJ <- mean_and_se(B_NJ)
NV <- mean_and_se(B_NV)
NY <- mean_and_se(B_NY)
OH <- mean_and_se(B_OH)
OK <- mean_and_se(B_OK)
PA <- mean_and_se(B_PA)
RI <- mean_and_se(B_RI)
SC <- mean_and_se(B_SC)
TN <- mean_and_se(B_TN)
TX <- mean_and_se(B_TX)
VA <- mean_and_se(B_VA)
WA <- mean_and_se(B_WA)
WI <- mean_and_se(B_WI)
WV <- mean_and_se(B_WV)

#Row bind results
B_tv_df_de_results <- rbind(AL, AK, AR, AZ, CA, CO, CT, DE, FL, GA, 
                            IA, IL, IN, KS, KY, LA, MA, MD, 
                            MI, MN, MO, MS, NC, ND, NE, 
                            NJ, NV, NY, OH, OK, PA, RI, SC, 
                            TN, TX, VA, WA, WI, WV)

#Define object as a data frame
B_tv_df_de_results <- as.data.frame(B_tv_df_de_results)







#Change variable names                              
names(B_tv_df_de_results) <- c("State", "B_direct_est", "B_se")


#Write state abbreviations into the "State" variable
B_tv_df_de_results$State <- c("AL", "AK", "AR", "AZ", "CA", "CO", "CT", 
                              "DE", "FL", "GA", "IA", "IL", 
                              "IN", "KS", "KY", "LA", "MA", "MD", 
                              "MI", "MN", "MO", "MS", "NC", "ND", 
                              "NE", "NJ", "NV", "NY", "OH", 
                              "OK", "PA", "RI", "SC", "TN", 
                              "TX", "VA", "WA", "WI", "WV") 


#Export (save) data set
write.csv(B_tv_df_de_results, 
          "[filepath]/B_tv_df_de_results.csv")

#Free up memory
rm(list = ls())

#####H#####

#write function that pools variance and than takes the sqrt (the se)
pooled_se <- function(x){
  within_var <- mean(x)
  between_var <- var(x)
  sampling_var <- between_var/20
  sqrt(sum(within_var, between_var, sampling_var))
}

#write function that reads .dta file with mean plausible values and 
# associated mean variance estimates, and returns a mean and se.

mean_and_se <- function(x) {
  mean_de <- apply(x[,1], 2, mean)
  se_de <- apply(x[,2], 2, pooled_se)
  print(c("x", mean_de, se_de))
}

#Import Data for subgroup

H_AL <- read_dta("[filepath]/H-AL.dta")
H_AK <- read_dta("[filepath]/H-AK.dta")
H_AR <- read_dta("[filepath]/H-AR.dta")
H_AZ <- read_dta("[filepath]/H-AZ.dta")
H_CA <- read_dta("[filepath]/H-CA.dta")
H_CO <- read_dta("[filepath]/H-CO.dta")
H_CT <- read_dta("[filepath]/H-CT.dta")
H_DE <- read_dta("[filepath]/H-DE.dta")
H_FL <- read_dta("[filepath]/H-FL.dta")
H_GA <- read_dta("[filepath]/H-GA.dta")
H_HI <- read_dta("[filepath]/H-HI.dta")
H_IA <- read_dta("[filepath]/H-IA.dta")
H_ID <- read_dta("[filepath]/H-ID.dta")
H_IL <- read_dta("[filepath]/H-IL.dta")
H_IN <- read_dta("[filepath]/H-IN.dta")
H_KS <- read_dta("[filepath]/H-KS.dta")
H_KY <- read_dta("[filepath]/H-KY.dta")
H_LA <- read_dta("[filepath]/H-LA.dta")
H_MA <- read_dta("[filepath]/H-MA.dta")
H_MD <- read_dta("[filepath]/H-MD.dta")
H_MI <- read_dta("[filepath]/H-MI.dta")
H_MN <- read_dta("[filepath]/H-MN.dta")
H_MO <- read_dta("[filepath]/H-MO.dta")
H_MS <- read_dta("[filepath]/H-MS.dta")
H_MT <- read_dta("[filepath]/H-MT.dta")
H_NC <- read_dta("[filepath]/H-NC.dta")
H_ND <- read_dta("[filepath]/H-ND.dta")
H_NE <- read_dta("[filepath]/H-NE.dta")
H_NH <- read_dta("[filepath]/H-NH.dta")
H_NJ <- read_dta("[filepath]/H-NJ.dta")
H_NM <- read_dta("[filepath]/H-NM.dta")
H_NV <- read_dta("[filepath]/H-NV.dta")
H_NY <- read_dta("[filepath]/H-NY.dta")
H_OH <- read_dta("[filepath]/H-OH.dta")
H_OK <- read_dta("[filepath]/H-OK.dta")
H_OR <- read_dta("[filepath]/H-OR.dta")
H_PA <- read_dta("[filepath]/H-PA.dta")
H_RI <- read_dta("[filepath]/H-RI.dta")
H_SC <- read_dta("[filepath]/H-SC.dta")
H_SD <- read_dta("[filepath]/H-SD.dta")
H_TN <- read_dta("[filepath]/H-TN.dta")
H_TX <- read_dta("[filepath]/H-TX.dta")
H_UT <- read_dta("[filepath]/H-UT.dta")
H_VA <- read_dta("[filepath]/H-VA.dta")
H_WA <- read_dta("[filepath]/H-WA.dta")
H_WI <- read_dta("[filepath]/H-WI.dta")
H_WY <- read_dta("[filepath]/H-WY.dta")

#apply mean_and_se() function to the imported data sets
AL <- mean_and_se(H_AL)
AK <- mean_and_se(H_AK)
AR <- mean_and_se(H_AR)
AZ <- mean_and_se(H_AZ)
CA <- mean_and_se(H_CA)
CO <- mean_and_se(H_CO)
CT <- mean_and_se(H_CT)
DE <- mean_and_se(H_DE)
FL <- mean_and_se(H_FL)
GA <- mean_and_se(H_GA)
HI <- mean_and_se(H_HI)
IA <- mean_and_se(H_IA)
ID <- mean_and_se(H_ID)
IL <- mean_and_se(H_IL)
IN <- mean_and_se(H_IN)
KS <- mean_and_se(H_KS)
KY <- mean_and_se(H_KY)
LA <- mean_and_se(H_LA)
MA <- mean_and_se(H_MA)
MD <- mean_and_se(H_MD)
MI <- mean_and_se(H_MI)
MN <- mean_and_se(H_MN)
MO <- mean_and_se(H_MO)
MS <- mean_and_se(H_MS)
MT <- mean_and_se(H_MT)
NC <- mean_and_se(H_NC)
ND <- mean_and_se(H_ND)
NE <- mean_and_se(H_NE)
NH <- mean_and_se(H_NH)
NJ <- mean_and_se(H_NJ)
NM <- mean_and_se(H_NM)
NV <- mean_and_se(H_NV)
NY <- mean_and_se(H_NY)
OH <- mean_and_se(H_OH)
OK <- mean_and_se(H_OK)
OR <- mean_and_se(H_OR)
PA <- mean_and_se(H_PA)
RI <- mean_and_se(H_RI)
SC <- mean_and_se(H_SC)
SD <- mean_and_se(H_SD)
TN <- mean_and_se(H_TN)
TX <- mean_and_se(H_TX)
UT <- mean_and_se(H_UT)
VA <- mean_and_se(H_VA)
WA <- mean_and_se(H_WA)
WI <- mean_and_se(H_WI)
WY <- mean_and_se(H_WY)

#Row bind results
H_tv_df_de_results <- rbind(AL, AK, AR, AZ, CA, CO, CT, DE, FL, GA, 
                            HI, IA, ID, IL, IN, KS, KY, LA, MA, MD, 
                            MI, MN, MO, MS, MT, NC, ND, NE, NH, 
                            NJ, NM, NV, NY, OH, OK, OR, PA, RI, SC, 
                            SD, TN, TX, UT, VA, WA, WI, WY)

#Define object as a data frame
H_tv_df_de_results <- as.data.frame(H_tv_df_de_results)

#Change variable names                              
names(H_tv_df_de_results) <- c("State", "H_direct_est", "H_se")
#will need to change variable names

#Write state abbreviations into the "State" variable
H_tv_df_de_results$State <- c("AL", "AK", "AR", "AZ", "CA", "CO", "CT", 
                              "DE", "FL", "GA", "HI", "IA", "ID", "IL", 
                              "IN", "KS", "KY", "LA", "MA", "MD", 
                              "MI", "MN", "MO", "MS", "MT", "NC", "ND", 
                              "NE", "NH", "NJ", "NM", "NV", "NY", "OH", 
                              "OK", "OR", "PA", "RI", "SC", "SD", "TN", 
                              "TX", "UT", "VA", "WA", "WI", 
                              "WY")

#Export (save) data set
write.csv(H_tv_df_de_results, 
          "[filepath]/H_tv_df_de_results.csv")

#Free up memory
rm(list = ls())

#####API#####

#write function that pools variance and than takes the sqrt (the se)
pooled_se <- function(x){
  within_var <- mean(x)
  between_var <- var(x)
  sampling_var <- between_var/20
  sqrt(sum(within_var, between_var, sampling_var))
}

#write function that reads .dta file with mean plausible values and 
# associated mean variance estimates, and returns a mean and se.

mean_and_se <- function(x) {
  mean_de <- apply(x[,1], 2, mean)
  se_de <- apply(x[,2], 2, pooled_se)
  print(c("x", mean_de, se_de))
}

#Import Data for subgroup

API_AK <- read_dta("[filepath]/API-AK.dta")
API_AZ <- read_dta("[filepath]/API-AZ.dta")
API_CA <- read_dta("[filepath]/API-CA.dta")
API_CO <- read_dta("[filepath]/API-CO.dta")
API_CT <- read_dta("[filepath]/API-CT.dta")
API_DE <- read_dta("[filepath]/API-DE.dta")
API_FL <- read_dta("[filepath]/API-FL.dta")
API_GA <- read_dta("[filepath]/API-GA.dta")
API_HI <- read_dta("[filepath]/API-HI.dta")
API_IA <- read_dta("[filepath]/API-IA.dta")
API_IL <- read_dta("[filepath]/API-IL.dta")
API_KS <- read_dta("[filepath]/API-KS.dta")
API_KY <- read_dta("[filepath]/API-KY.dta")
API_MA <- read_dta("[filepath]/API-MA.dta")
API_MD <- read_dta("[filepath]/API-MD.dta")
API_MI <- read_dta("[filepath]/API-MI.dta")
API_MN <- read_dta("[filepath]/API-MN.dta")
API_NC <- read_dta("[filepath]/API-NC.dta")
API_NH <- read_dta("[filepath]/API-NH.dta")
API_NJ <- read_dta("[filepath]/API-NJ.dta")
API_NV <- read_dta("[filepath]/API-NV.dta")
API_NY <- read_dta("[filepath]/API-NY.dta")
API_OH <- read_dta("[filepath]/API-OH.dta")
API_OR <- read_dta("[filepath]/API-OR.dta")
API_PA <- read_dta("[filepath]/API-PA.dta")
API_RI <- read_dta("[filepath]/API-RI.dta")
API_TX <- read_dta("[filepath]/API-TX.dta")
API_VA <- read_dta("[filepath]/API-VA.dta")
API_WA <- read_dta("[filepath]/API-WA.dta")
API_WI <- read_dta("[filepath]/API-WI.dta")


#apply mean_and_se() function to the imported data sets
AK <- mean_and_se(API_AK)
AZ <- mean_and_se(API_AZ)
CA <- mean_and_se(API_CA)
CO <- mean_and_se(API_CO)
CT <- mean_and_se(API_CT)
DE <- mean_and_se(API_DE)
FL <- mean_and_se(API_FL)
GA <- mean_and_se(API_GA)
HI <- mean_and_se(API_HI)
IA <- mean_and_se(API_IA)
IL <- mean_and_se(API_IL)
KS <- mean_and_se(API_KS)
KY <- mean_and_se(API_KY)
MA <- mean_and_se(API_MA)
MD <- mean_and_se(API_MD)
MI <- mean_and_se(API_MI)
MN <- mean_and_se(API_MN)
NC <- mean_and_se(API_NC)
NH <- mean_and_se(API_NH)
NJ <- mean_and_se(API_NJ)
NV <- mean_and_se(API_NV)
NY <- mean_and_se(API_NY)
OH <- mean_and_se(API_OH)
OR <- mean_and_se(API_OR)
PA <- mean_and_se(API_PA)
RI <- mean_and_se(API_RI)
TX <- mean_and_se(API_TX)
VA <- mean_and_se(API_VA)
WA <- mean_and_se(API_WA)
WI <- mean_and_se(API_WI)
WV <- mean_and_se(API_WV)

#Row bind results
API_tv_df_de_results <- rbind(AK, AZ, CA, CO, CT, DE, FL, GA, 
                              HI, IA, IL, KS, KY, MA, MD, 
                              MI, MN, NC, NH, 
                              NJ, NV, NY, OH, OR, PA, RI,
                              TX, VA, WA, WI)

#Define object as a data frame
API_tv_df_de_results <- as.data.frame(API_tv_df_de_results)

#Change variable names                              
names(API_tv_df_de_results) <- c("State", "API_direct_est", "API_se")
#will need to change variable names

#Write state abbreviations into the "State" variable
API_tv_df_de_results$State <- c("AK", "AZ", "CA", "CO", "CT", "DE", 
                                "FL", "GA", "HI", "IA", "IL", "KS", 
                                "KY", "MA", "MD", "MI", "MN", "NC", 
                                "NH", "NJ", "NV", "NY", "OH", "OR", 
                                "PA", "RI", "TX", "VA", "WA", "WI")

#Export (save) data set
write.csv(API_tv_df_de_results, 
          "[filepath]/API_tv_df_de_results.csv")

#Free up memory
rm(list = ls())

#####AINA#####

#write function that pools variance and than takes the sqrt (the se)
pooled_se <- function(x){
  within_var <- mean(x)
  between_var <- var(x)
  sampling_var <- between_var/20
  sqrt(sum(within_var, between_var, sampling_var))
}

#write function that reads .dta file with mean plausible values and 
# associated mean variance estimates, and returns a mean and se.

mean_and_se <- function(x) {
  mean_de <- apply(x[,1], 2, mean)
  se_de <- apply(x[,2], 2, pooled_se)
  print(c("x", mean_de, se_de))
}

#Import Data for subgroup

AINA_AK <- read_dta("[filepath]/AINA-AK.dta")
AINA_AZ <- read_dta("[filepath]/AINA-AZ.dta")
AINA_MN <- read_dta("[filepath]/AINA-MN.dta")
AINA_MT <- read_dta("[filepath]/AINA-MT.dta")
AINA_NC <- read_dta("[filepath]/AINA-NC.dta")
AINA_ND <- read_dta("[filepath]/AINA-ND.dta")
AINA_NM <- read_dta("[filepath]/AINA-NM.dta")
AINA_OK <- read_dta("[filepath]/AINA-OK.dta")
AINA_SD <- read_dta("[filepath]/AINA-SD.dta")
AINA_UT <- read_dta("[filepath]/AINA-UT.dta")
AINA_WA <- read_dta("[filepath]/AINA-WA.dta")
AINA_WI <- read_dta("[filepath]/AINA-WI.dta")
AINA_WY <- read_dta("[filepath]/AINA-WY.dta")

#apply mean_and_se() function to the imported data sets
AK <- mean_and_se(AINA_AK)
AZ <- mean_and_se(AINA_AZ)
MN <- mean_and_se(AINA_MN)
MT <- mean_and_se(AINA_MT)
NC <- mean_and_se(AINA_NC)
ND <- mean_and_se(AINA_ND)
NM <- mean_and_se(AINA_NM)
OK <- mean_and_se(AINA_OK)
SD <- mean_and_se(AINA_SD)
UT <- mean_and_se(AINA_UT)
WA <- mean_and_se(AINA_WA)
WI <- mean_and_se(AINA_WI)
WY <- mean_and_se(AINA_WY)

#Row bind results
AINA_tv_df_de_results <- rbind(AK, AZ, MN, MT, NC, ND, NM, OK, SD, UT, 
                               WA, WI, WY)

#Define object as a data frame
AINA_tv_df_de_results <- as.data.frame(AINA_tv_df_de_results)

#Change variable names                              
names(AINA_tv_df_de_results) <- c("State", "AINA_direct_est", "AINA_se")
#will need to change variable names

#Write state abbreviations into the "State" variable
AINA_tv_df_de_results$State <- c("AK", "AZ", "MN", "MT", "NC", "ND", "NM",
                                 "OK", "SD", "UT", "WA", "WI", "WY")

#Export (save) data set
write.csv(AINA_tv_df_de_results, 
          "[filepath]/AINA_tv_df_de_results.csv")

#Free up memory
rm(list = ls())

#####2+/TP#####

#write function that pools variance and than takes the sqrt (the se)
pooled_se <- function(x){
  within_var <- mean(x)
  between_var <- var(x)
  sampling_var <- between_var/20
  sqrt(sum(within_var, between_var, sampling_var))
}

#write function that reads .dta file with mean plausible values and 
# associated mean variance estimates, and returns a mean and se.

mean_and_se <- function(x) {
  mean_de <- apply(x[,1], 2, mean)
  se_de <- apply(x[,2], 2, pooled_se)
  print(c("x", mean_de, se_de))
}

#Import Data for subgroup

TP_AK <- read_dta("[filepath]/TP-AK.dta")
TP_CA <- read_dta("[filepath]/TP-CA.dta")
TP_CO <- read_dta("[filepath]/TP-CO.dta")
TP_FL <- read_dta("[filepath]/TP-FL.dta")
TP_GA <- read_dta("[filepath]/TP-GA.dta")
TP_HI <- read_dta("[filepath]/TP-HI.dta")
TP_IA <- read_dta("[filepath]/TP-IA.dta")
TP_IN <- read_dta("[filepath]/TP-IN.dta")
TP_KS <- read_dta("[filepath]/TP-KS.dta")
TP_KY <- read_dta("[filepath]/TP-KY.dta")
TP_MD <- read_dta("[filepath]/TP-MD.dta")
TP_MN <- read_dta("[filepath]/TP-MN.dta")
TP_MT <- read_dta("[filepath]/TP-MT.dta")
TP_NC <- read_dta("[filepath]/TP-NC.dta")
TP_NE <- read_dta("[filepath]/TP-NE.dta")
TP_NV <- read_dta("[filepath]/TP-NV.dta")
TP_OH <- read_dta("[filepath]/TP-OH.dta")
TP_OK <- read_dta("[filepath]/TP-OK.dta")
TP_OR <- read_dta("[filepath]/TP-OR.dta")
TP_PA <- read_dta("[filepath]/TP-PA.dta")
TP_RI <- read_dta("[filepath]/TP-RI.dta")
TP_TX <- read_dta("[filepath]/TP-TX.dta")
TP_VA <- read_dta("[filepath]/TP-VA.dta")
TP_WA <- read_dta("[filepath]/TP-WA.dta")

#apply mean_and_se() function to the imported data sets
AK <- mean_and_se(TP_AK)
CA <- mean_and_se(TP_CA)
CO <- mean_and_se(TP_CO)
FL <- mean_and_se(TP_FL)
GA <- mean_and_se(TP_GA)
HI <- mean_and_se(TP_HI)
IA <- mean_and_se(TP_IA)
IN <- mean_and_se(TP_IN)
KS <- mean_and_se(TP_KS)
KY <- mean_and_se(TP_KY)
MD <- mean_and_se(TP_MD)
MN <- mean_and_se(TP_MN)
MT <- mean_and_se(TP_MT)
NC <- mean_and_se(TP_NC)
NE <- mean_and_se(TP_NE)
NV <- mean_and_se(TP_NV)
OH <- mean_and_se(TP_OH)
OK <- mean_and_se(TP_OK)
OR <- mean_and_se(TP_OR)
PA <- mean_and_se(TP_PA)
RI <- mean_and_se(TP_RI)
TX <- mean_and_se(TP_TX)
VA <- mean_and_se(TP_VA)
WA <- mean_and_se(TP_WA)

#Row bind results
TP_tv_df_de_results <- rbind(AK, CA, CO, FL, GA, 
                             HI, IA, IN, KS, KY, MD, 
                             MN, MT, NC, NE,
                             NV, OH, OK, OR, PA, RI, TX,
                             VA, WA)

#Define object as a data frame
TP_tv_df_de_results <- as.data.frame(TP_tv_df_de_results)

#Change variable names                              
names(TP_tv_df_de_results) <- c("State", "TP_direct_est", "TP_se")
#will need to change variable names




#Write state abbreviations into the "State" variable
TP_tv_df_de_results$State <- c("AK", "CA", "CO", "FL", "GA", 
                               "HI", "IA", "IN", "KS", "KY", "MD", 
                               "MN", "MT", "NC", "NE",
                               "NV", "OH", "OK", "OR", "PA", "RI", 
                               "TX", "VA", "WA")

#Export (save) data set
write.csv(TP_tv_df_de_results, 
          "[filepath]/TP_tv_df_de_results.csv")

#Free up memory
rm(list = ls())


#####EL#####

#write function that pools variance and than takes the sqrt (the se)
pooled_se <- function(x){
  within_var <- mean(x)
  between_var <- var(x)
  sampling_var <- between_var/20
  sqrt(sum(within_var, between_var, sampling_var))
}

#write function that reads .dta file with mean plausible values and 
# associated mean variance estimates, and returns a mean and se.

mean_and_se <- function(x) {
  mean_de <- apply(x[,1], 2, mean)
  se_de <- apply(x[,2], 2, pooled_se)
  print(c("x", mean_de, se_de))
}

#Import Data for subgroup

EL_AK <- read_dta("[filepath]/EL-AK.dta")
EL_AR <- read_dta("[filepath]/EL-AR.dta")
EL_AZ <- read_dta("[filepath]/EL-AZ.dta")
EL_CA <- read_dta("[filepath]/EL-CA.dta")
EL_CO <- read_dta("[filepath]/EL-CO.dta")
EL_CT <- read_dta("[filepath]/EL-CT.dta")
EL_FL <- read_dta("[filepath]/EL-FL.dta")
EL_GA <- read_dta("[filepath]/EL-GA.dta")
EL_HI <- read_dta("[filepath]/EL-HI.dta")
EL_IA <- read_dta("[filepath]/EL-IA.dta")
EL_IL <- read_dta("[filepath]/EL-IL.dta")
EL_IN <- read_dta("[filepath]/EL-IN.dta")
EL_KS <- read_dta("[filepath]/EL-KS.dta")
EL_MA <- read_dta("[filepath]/EL-MA.dta")
EL_MD <- read_dta("[filepath]/EL-MD.dta")
EL_MI <- read_dta("[filepath]/EL-MI.dta")
EL_MN <- read_dta("[filepath]/EL-MN.dta")
EL_NC <- read_dta("[filepath]/EL-NC.dta")
EL_NM <- read_dta("[filepath]/EL-NM.dta")
EL_NV <- read_dta("[filepath]/EL-NV.dta")
EL_NY <- read_dta("[filepath]/EL-NY.dta")
EL_OH <- read_dta("[filepath]/EL-OH.dta")
EL_OK <- read_dta("[filepath]/EL-OK.dta")
EL_PA <- read_dta("[filepath]/EL-PA.dta")
EL_RI <- read_dta("[filepath]/EL-RI.dta")
EL_SC <- read_dta("[filepath]/EL-SC.dta")
EL_TX <- read_dta("[filepath]/EL-TX.dta")
EL_UT <- read_dta("[filepath]/EL-UT.dta")
EL_VA <- read_dta("[filepath]/EL-VA.dta")
EL_WA <- read_dta("[filepath]/EL-WA.dta")
EL_WI <- read_dta("[filepath]/EL-WI.dta")

#apply mean_and_se() function to the imported data sets
AK <- mean_and_se(EL_AK)
AR <- mean_and_se(EL_AR)
AZ <- mean_and_se(EL_AZ)
CA <- mean_and_se(EL_CA)
CO <- mean_and_se(EL_CO)
CT <- mean_and_se(EL_CT)
FL <- mean_and_se(EL_FL)
GA <- mean_and_se(EL_GA)
HI <- mean_and_se(EL_HI)
IA <- mean_and_se(EL_IA)
IL <- mean_and_se(EL_IL)
IN <- mean_and_se(EL_IN)
KS <- mean_and_se(EL_KS)
MA <- mean_and_se(EL_MA)
MD <- mean_and_se(EL_MD)
MI <- mean_and_se(EL_MI)
MN <- mean_and_se(EL_MN)
NC <- mean_and_se(EL_NC)
NM <- mean_and_se(EL_NM)
NV <- mean_and_se(EL_NV)
NY <- mean_and_se(EL_NY)
OH <- mean_and_se(EL_OH)
OK <- mean_and_se(EL_OK)
PA <- mean_and_se(EL_PA)
RI <- mean_and_se(EL_RI)
SC <- mean_and_se(EL_SC)
TX <- mean_and_se(EL_TX)
UT <- mean_and_se(EL_UT)
VA <- mean_and_se(EL_VA)
WA <- mean_and_se(EL_WA)
WI <- mean_and_se(EL_WI)

#Row bind results
EL_tv_df_de_results <- rbind(AK, AR, AZ, CA, CO, CT, FL, GA, 
                             HI, IA, IL, IN, KS, MA, MD, 
                             MI, MN, NC,
                             NM, NV, NY, OH, OK, PA, RI, SC, 
                             TX, UT, VA, WA, WI)

#Define object as a data frame
EL_tv_df_de_results <- as.data.frame(EL_tv_df_de_results)

#Change variable names                              
names(EL_tv_df_de_results) <- c("State", "EL_direct_est", "EL_se")
#will need to change variable names

#Write state abbreviations into the "State" variable
EL_tv_df_de_results$State <- c("AK", "AR", "AZ", "CA", "CO", "CT", 
                               "FL", "GA", "HI", "IA", "IL", "IN", 
                               "KS", "MA", "MD", "MI", "MN", "NC",
                               "NM", "NV", "NY", "OH", "OK", "PA",
                               "RI", "SC", "TX", "UT", "VA", "WA", 
                               "WI")




#Export (save) data set
write.csv(EL_tv_df_de_results, 
          "[filepath]/EL_tv_df_de_results.csv")

#Free up memory
rm(list = ls())

###Bind datasets to...
State <- c("AL", "AK", "AZ", "AR", "CA", "CO", "CT", 
           "DE", "FL", "GA", "HI", "ID", "IL", "IN", 
           "IA", "KS", "KY", "LA", "ME", "MD", "MA",
           "MI", "MN", "MS", "MO", "MT", "NE", "NV", 
           "NH", "NJ", "NM", "NY", "NC", "ND", "OH", 
           "OK", "OR", "PA", "RI", "SC", "SD", "TN", 
           "TX", "UT", "VT", "VA", "WA", "WV", "WI", 
           "WY")

de_dfs <- data.frame(State)

NHS_tv_df_de_results <- 
  read.csv("[filepath]/NHS_tv_df_de_results.csv")
NHS_tv_df_de_results <- NHS_tv_df_de_results[,-1] 
HS_tv_df_de_results <- 
  read.csv("[filepath]/HS_tv_df_de_results.csv")
HS_tv_df_de_results <- HS_tv_df_de_results[, -1] 
SBA_tv_df_de_results <- 
  read.csv("[filepath]/SBA_tv_df_de_results.csv")
SBA_tv_df_de_results <- SBA_tv_df_de_results[,-1] 
BA_tv_df_de_results <- 
  read.csv("[filepath]/BA_tv_df_de_results.csv")
BA_tv_df_de_results <- BA_tv_df_de_results[,-1] 
B_tv_df_de_results <- 
  read.csv("[filepath]/B_tv_df_de_results.csv")
B_tv_df_de_results <- B_tv_df_de_results[,-1] 
H_tv_df_de_results <- 
  read.csv("[filepath]/H_tv_df_de_results.csv")
H_tv_df_de_results <- H_tv_df_de_results[,-1] 
API_tv_df_de_results <- 
  read.csv("[filepath]/API_tv_df_de_results.csv")
API_tv_df_de_results <- API_tv_df_de_results[,-1] 
AINA_tv_df_de_results <- 
  read.csv("[filepath]/AINA_tv_df_de_results.csv")
AINA_tv_df_de_results <- AINA_tv_df_de_results[,-1] 
TP_tv_df_de_results <- 
  read.csv("[filepath]/TP_tv_df_de_results.csv")
TP_tv_df_de_results <- TP_tv_df_de_results[,-1] 
EL_tv_df_de_results <- 
  read.csv("[filepath]/EL_tv_df_de_results.csv")
EL_tv_df_de_results <- EL_tv_df_de_results[,-1] 

library(dplyr)
de_dfs <- full_join(de_dfs, NHS_tv_df_de_results, by = "State") %>%
  full_join(HS_tv_df_de_results, by = "State")  %>%
  full_join(SBA_tv_df_de_results, by = "State")  %>%
  full_join(BA_tv_df_de_results, by = "State")  %>%
  full_join(B_tv_df_de_results, by = "State")  %>%
  full_join(H_tv_df_de_results, by = "State")  %>%
  full_join(API_tv_df_de_results, by = "State")  %>%
  full_join(AINA_tv_df_de_results, by = "State")  %>%
  full_join(TP_tv_df_de_results, by = "State")  %>%
  full_join(EL_tv_df_de_results, by = "State")


#Export (save) direct estimates file

write.csv(de_dfs, "[filepath]/de_dfs.csv")
