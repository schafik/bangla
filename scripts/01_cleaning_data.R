##renaming & cleaning baseline & follow-up data###########################################################################

#loading libraries#
source("scripts/helper_scripts/load_packages.R")

#All the rest (baselines and follow ups 1 and 2) are saved in
##X:\Dropbox\Bangladesh Projects\Factories _ EWP\Field Activities\09 Data_for_PIs (no PII)\Round 1

#baseline#
standard_b <- read_excel("~/Dropbox/Bangladesh Projects/Factories _ EWP/Field Activities/09 Data_for_PIs (no PII)/Round 1/StandardBaselineWRollout_noPII_labels.xlsx")

# azim_b <- read_excel("~/Dropbox/Bangladesh Projects/Factories _ EWP/Field Activities/09 Data_for_PIs (no PII)/Round 1/Azim_baseline_noPII_label.xlsx") %>%
#             mutate(factory = "04")

#follow ups#  

standard_f1 <- read_excel("~/Dropbox/Bangladesh Projects/Factories _ EWP/Field Activities/09 Data_for_PIs (no PII)/Round 1/followup1_label.xlsx")

standard_f2 <- read_excel("~/Dropbox/Bangladesh Projects/Factories _ EWP/Field Activities/09 Data_for_PIs (no PII)/Round 1/follow-up2_label.xls")

# standard_phone <- read_excel("~/Dropbox/Bangladesh Projects/Factories _ EWP/Data/phone follow up/StandardPhoneFolUp_label_08-11-15.xlsx")


###renaming#############################################################################################################

#dropping any unneccessary columns#
standard_bRENAME <- standard_b[data_all]; standard_bRENAME <- standard_bRENAME[,-which(is.na(names(standard_bRENAME)))]
standard_f1RENAME <- standard_f1[data_all]; standard_f1RENAME <- standard_f1RENAME[,-which(is.na(names(standard_f1RENAME)))]    
standard_f2RENAME <- standard_f2[data_all]; standard_f2RENAME <- standard_f2RENAME[,-which(is.na(names(standard_f2RENAME)))]

    #TO DO: legend file for follow up 1 + follow up 2 + phone








###writing out#########################################################################################################
source("scripts/helper_scripts/stata_functions.R") #reading in helper function 
follow_stata <- prep_for_stata(follow_up) #transforming data to make it STATA friendly
write.dta(follow_stata, "~/Dropbox/Bangladesh Projects/Factories _ EWP/Data/follow_up/raw_data/FULL_raw_followup.dta")