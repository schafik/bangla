
source("scripts/load_packages.R")

baseline <- readRDS("~/Dropbox/Bangladesh Projects/Factories _ EWP/Data/baseline/raw_data/raw_baseline.RDS")

follow_up <- readRDS("~/Dropbox/Bangladesh Projects/Factories _ EWP/Data/follow-up 1/raw_data/raw_followup1.RDS")

#cleaning of variables###########################################################
baseline <- baseline %>% #assigning value to baseline dataframe
      mutate(gender = tolower(ifelse(gender %in% c("", "SREE"), NA, #recoding gender variable
                              ifelse(gender == "ma", "male", gender))),
             sex = ifelse(sex == 0, "male", 
                   ifelse(sex == 1, "female", NA)))

#writing out data################################################################
#CSV#
write_csv(baseline, "~/Dropbox/Bangladesh Projects/Factories _ EWP/Data/baseline/in_process_data/cleaned_baseline.csv")

#R format#
saveRDS(baseline, "~/Dropbox/Bangladesh Projects/Factories _ EWP/Data/baseline/in_process_data/cleaned_baseline.RDS")

#STATA format#
source("scripts/stata_functions.R") #reading in helper function 
baseline_stata <- prep_for_stata(baseline) #transforming data to make it STATA friendly
write.dta(baseline_stata, "~/Dropbox/Bangladesh Projects/Factories _ EWP/Data/baseline/in_process_data/cleaned_baseline.dta")


