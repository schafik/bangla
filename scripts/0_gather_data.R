

#reading in necessary packages##################################################
source("scripts/load_packages.R")
source("scripts/cleaning_functions.R")

#reading in data################################################################
baseline <- readRDS("~/Dropbox/Bangladesh Projects/Factories _ EWP/Data/baseline/raw_data/raw_baseline.RDS")

followup <- readRDS("~/Dropbox/Bangladesh Projects/Factories _ EWP/Data/follow-up 1/raw_data/raw_followup1.RDS")

#cleaning of variables###########################################################

#baseline#
baseline <- baseline %>% #assigning value to baseline dataframe
      mutate(gender = tolower(ifelse(gender %in% c("", "SREE"), NA, #recoding gender variable
                              ifelse(gender == "ma", "male", gender))),
             sex = ifelse(sex == 0, "male", 
                   ifelse(sex == 1, "female", NA)))

#follow up 1 + 2???#
followup <- followup %>%
  mutate(gender = tolower(ifelse(gender %in% c("", "SREE"), NA, #recoding gender variable
                                 ifelse(gender == "ma", "male", gender))),
         nf_constrans_w = consump_bins(nf_constrans_w), #cleaning messy consumption bin data
         fcmeat = consump_bins(fcmeat), 
         fcspice = consump_bins(fcspice),
         nf_constrans_fam = consump_bins(nf_constrans_fam),
         nf_consphone = consump_bins(nf_consphone),
         nf_consedu = consump_bins(nf_consedu),
         nf_conshealth = consump_bins(nf_conshealth),
         nf_consgifts = consump_bins(nf_consgifts),
         nf_consentertain = consump_bins(nf_consentertain),
         nf_consfestiv = consump_bins(nf_consfestiv),
         nf_consclothes = consump_bins(nf_consclothes))


#writing out data################################################################
#CSV#
write_csv(baseline, "~/Dropbox/Bangladesh Projects/Factories _ EWP/Data/baseline/in_process_data/cleaned_baseline.csv")
write_csv(followup, "~/Dropbox/Bangladesh Projects/Factories _ EWP/Data/follow-up 1/in_process_data/cleaned_followup1.csv")

#R format#
saveRDS(baseline, "~/Dropbox/Bangladesh Projects/Factories _ EWP/Data/baseline/in_process_data/cleaned_baseline.RDS")
saveRDS(followup, "~/Dropbox/Bangladesh Projects/Factories _ EWP/Data/follow-up 1/in_process_data/cleaned_followup1.RDS")

#STATA format#
source("scripts/stata_functions.R") #reading in helper function 

baseline_stata <- prep_for_stata(baseline) #transforming data to make it STATA friendly
  write.dta(baseline_stata, "~/Dropbox/Bangladesh Projects/Factories _ EWP/Data/baseline/in_process_data/cleaned_baseline.dta")

followup_stata <- prep_for_stata(followup)
  write.dta(followup_stata, "~/Dropbox/Bangladesh Projects/Factories _ EWP/Data/follow-up 1/in_process_data/cleaned_followup1.dta")

