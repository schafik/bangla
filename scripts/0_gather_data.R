

#reading in necessary packages##################################################
source("scripts/load_packages.R")

#reading in data################################################################
baseline <- readRDS("~/Dropbox/Bangladesh Projects/Factories _ EWP/Data/baseline/raw_data/raw_baseline.RDS")

follow_up <- readRDS("~/Dropbox/Bangladesh Projects/Factories _ EWP/Data/follow-up 1/raw_data/raw_followup1.RDS")

#cleaning of variables###########################################################

#baseline#
baseline <- baseline %>% #assigning value to baseline dataframe
      mutate(gender = tolower(ifelse(gender %in% c("", "SREE"), NA, #recoding gender variable
                              ifelse(gender == "ma", "male", gender))),
             sex = ifelse(sex == 0, "male", 
                   ifelse(sex == 1, "female", NA)))

#follow up 1 + 2???#
# follow_up <- follow_up %>%
#   mutate()


#writing out data################################################################
#CSV#
write_csv(baseline, "~/Dropbox/Bangladesh Projects/Factories _ EWP/Data/baseline/in_process_data/cleaned_baseline.csv")
write_csv(follow_up, "~/Dropbox/Bangladesh Projects/Factories _ EWP/Data/follow-up 1/in_process_data/cleaned_followup1.csv")

#R format#
saveRDS(baseline, "~/Dropbox/Bangladesh Projects/Factories _ EWP/Data/baseline/in_process_data/cleaned_baseline.RDS")
saveRDS(follow_up, "~/Dropbox/Bangladesh Projects/Factories _ EWP/Data/follow-up 1/in_process_data/cleaned_followup1.RDS")

#STATA format#
source("scripts/stata_functions.R") #reading in helper function 

baseline_stata <- prep_for_stata(baseline) #transforming data to make it STATA friendly
  write.dta(baseline_stata, "~/Dropbox/Bangladesh Projects/Factories _ EWP/Data/baseline/in_process_data/cleaned_baseline.dta")

followup_stata <- prep_for_stata(follow_up)
  write.dta(followup_stata, "~/Dropbox/Bangladesh Projects/Factories _ EWP/Data/follow-up 1/in_process_data/cleaned_followup1.dta")

