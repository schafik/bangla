
source("scripts/load_packages.R")

baseline <- read.dta("~/Dropbox/Bangladesh Projects/Factories _ EWP/Data/baseline/baseline_survey_final_cleaned_wtreat_dummies_STATA12.dta")


#cleaning of variables#
baseline <- baseline %>% #assigning value to baseline dataframe, and then...
      mutate(gender = tolower(ifelse(gender %in% c("", "SREE"), NA, #recoding gender variable
                              ifelse(gender == "ma", "male", gender))),
             sex = ifelse(sex == 0, "male", 
                   ifelse(sex == 1, "female", NA)))

