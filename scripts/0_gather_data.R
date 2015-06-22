

#reading in necessary packages##################################################
source("scripts/load_packages.R")
source("scripts/cleaning_functions.R")

#reading in data################################################################
baseline <- readRDS("~/Dropbox/Bangladesh Projects/Factories _ EWP/Data/baseline/raw_data/raw_baseline.RDS")

followup1 <- readRDS("~/Dropbox/Bangladesh Projects/Factories _ EWP/Data/follow-up 1/raw_data/raw_followup1.RDS")

# followup2 <- readRDS("~/Dropbox/Bangladesh Projects/Factories _ EWP/Data/") #todo: resolve with Maura


#cleaning of variables###########################################################

#baseline#
baseline <- baseline %>% #assigning value to baseline dataframe
      mutate(gender = tolower(ifelse(gender %in% c("", "SREE"), NA, #recoding gender variable
                              ifelse(gender == "ma", "male", gender))),
             sex = ifelse(sex == 0, "male", 
                   ifelse(sex == 1, "female", NA)),
             hrent_D = rent_bins(hrent_D),
             c_prbig_exp = consump_priority(c_prbig_exp),
             c_prbig_withdr = consump_priority(c_prbig_withdr),
             c_pr2given_money1 = consump_priority(c_pr2given_money1),
             c_pr2given_money2 = consump_priority(c_pr2given_money2),
             c_pr2given_money3 = consump_priority(c_pr2given_money3)) 
#              hrent_incl = ifelse(!is.na(hrent_incl3), "food + utilities + other",
#                           ifelse(is.na(hrent_incl3) & !is.na(hrent_incl2), paste0(hrent_incl1, hrent_incl2),
#                                  hrent_incl1)),
#              hrent_incl = str_trim(str_replace_all(hrent_incl, "Rent includes", ""), side = "both"),
#              hrent_incl = ifelse(hrent_incl == 3, hrent_incl1, hrent_incl))

#follow up 1 + 2???#
followup1 <- followup1 %>%
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
write_csv(followup1, "~/Dropbox/Bangladesh Projects/Factories _ EWP/Data/follow-up 1/in_process_data/cleaned_followup1.csv")

#R format#
saveRDS(baseline, "~/Dropbox/Bangladesh Projects/Factories _ EWP/Data/baseline/in_process_data/cleaned_baseline.RDS")
saveRDS(followup1, "~/Dropbox/Bangladesh Projects/Factories _ EWP/Data/follow-up 1/in_process_data/cleaned_followup1.RDS")

#STATA format#
source("scripts/stata_functions.R") #reading in helper function 

baseline_stata <- prep_for_stata(baseline) #transforming data to make it STATA friendly
  write.dta(baseline_stata, "~/Dropbox/Bangladesh Projects/Factories _ EWP/Data/baseline/in_process_data/cleaned_baseline.dta")

followup_stata <- prep_for_stata(followup1)
  write.dta(followup_stata, "~/Dropbox/Bangladesh Projects/Factories _ EWP/Data/follow-up 1/in_process_data/cleaned_followup1.dta")

