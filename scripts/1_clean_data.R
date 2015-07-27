#cleaning data:  ###########################################################################
#recoding certain variables and writing out to csv/STATA/r#############################
####################################################################################

#reading in necessary packages##################################################
source("scripts/load_packages.R")
source("scripts/cleaning_functions.R")

#reading in data######################################################################
baseline <- readRDS("~/Dropbox/Bangladesh Projects/Factories _ EWP/Data/baseline/raw_data/FULL_raw_baseline.rds")

followup <- readRDS("~/Dropbox/Bangladesh Projects/Factories _ EWP/Data/follow_up/raw_data/FULL_raw_followup.rds")

#cleaning of variables################################################################

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
             acc_type_for1 = account_bins(acc_type_for1),
             r_prlottery1 = ifelse(r_prlottery1 == "1", "Yes", 
                              ifelse(r_prlottery1 == "0", "No", r_prlottery1)),
             r_prlottery2 = ifelse(r_prlottery2 == "1", "Yes", 
                                   ifelse(r_prlottery2 == "0", "No", r_prlottery2)),
             r_prlottery3 = ifelse(r_prlottery3 == "1", "Yes", 
                                   ifelse(r_prlottery3 == "0", "No", r_prlottery3)),
             r_prlottery4 = ifelse(r_prlottery4 == "1", "Yes", 
                                   ifelse(r_prlottery4 == "0", "No", r_prlottery4)),
             r_prlottery5 = ifelse(r_prlottery5 == "1", "Yes", 
                                   ifelse(r_prlottery5 == "0", "No", r_prlottery5)),
             r_prlottery6 = ifelse(r_prlottery6 == "1", "Yes", 
                                   ifelse(r_prlottery6 == "0", "No", r_prlottery6)),
             t_prtime_pref1 = ifelse(t_prtime_pref1 == "1", "20 Taka now", 
                                   ifelse(t_prtime_pref1 == "2", "30 Taka in a month", t_prtime_pref1)),
             t_prtime_pref2 = ifelse(t_prtime_pref2 == "1", "20 Taka now", 
                                     ifelse(t_prtime_pref2 == "2", "60 Taka in a month", t_prtime_pref2)),
             t_prtime_pref3 = ifelse(t_prtime_pref3 == "1", "20 Taka in a month", 
                                     ifelse(t_prtime_pref3 == "2", "30 Taka in two months", t_prtime_pref3)),
             t_prtime_pref4 = ifelse(t_prtime_pref4 == "1", "20 Taka in a month", 
                                     ifelse(t_prtime_pref4 == "2", "60 Taka in two months", t_prtime_pref4)),
             t_prtime_pref5 = ifelse(t_prtime_pref5 == "1", "20 Taka in three months", 
                                     ifelse(t_prtime_pref5 == "2", "30 Taka in four months", t_prtime_pref5)),
             t_prtime_pref6 = ifelse(t_prtime_pref6 == "1", "20 Taka in three months", 
                                     ifelse(t_prtime_pref6 == "2", "60 Taka in four months", t_prtime_pref6)),
             trualtr_500 = ifelse(trualtr_500 %in% c("-100", "Don't know", "Refused to answer"), NA, 
                           ifelse(trualtr_500 == "1", "Keep 500 Taka for myself", 
                           ifelse(trualtr_500 == "2", "Give 100 Taka to friends or family and keep 400 Taka for myself",
                           ifelse(trualtr_500 == "3", "Give 200 Taka to friends or family and keep 300 Taka for myself",
                           ifelse(trualtr_500 == "4", "Give 250 Taka to friends or family and keep 250 Taka for myself",
                           ifelse(trualtr_500 == "5", "Give 300 Taka to friends or family and keep 200 Taka for myself",
                           ifelse(trualtr_500 == "6", "Give 400 Taka to friends or family and keep 100 Taka for myself",
                           ifelse(trualtr_500 == "7", "Give 500 Taka to family or friends", trualtr_500)))))))),
             trualtr_500 = factor(trualtr_500, levels = c("Give 500 Taka to family or friends", 
                                                          "Give 400 Taka to friends or family and keep 100 Taka for myself",
                                                          "Give 300 Taka to friends or family and keep 200 Taka for myself",
                                                          "Give 250 Taka to friends or family and keep 250 Taka for myself",
                                                          "Give 200 Taka to friends or family and keep 300 Taka for myself",
                                                          "Give 100 Taka to friends or family and keep 400 Taka for myself",
                                                          "Keep 500 Taka for myself")),
             trutrust1 = ifelse(trutrust1 == "1", "Strongly agree", 
                         ifelse(trutrust1 == "2", "Somewhat agree", 
                         ifelse(trutrust1 == "3", "Neither agree or disagree", 
                         ifelse(trutrust1 == "4", "Somewhat disagree", 
                         ifelse(trutrust1 == "5", "Strongly disagree", trutrust1))))),
             trutrust1 = factor(trutrust1, levels = c("Strongly agree", "Somewhat agree", "Neither agree or disagree", 
                                                      "Somewhat disagree", "Strongly disagree")),
             trutrust2 = ifelse(trutrust2 == "1", "Strongly agree", 
                                ifelse(trutrust2 == "2", "Somewhat agree", 
                                       ifelse(trutrust2 == "3", "Neither agree or disagree", 
                                              ifelse(trutrust2 == "4", "Somewhat disagree", 
                                                     ifelse(trutrust2 == "5", "Strongly disagree", trutrust2))))),
             trutrust2 = factor(trutrust2, levels = c("Strongly agree", "Somewhat agree", "Neither agree or disagree", 
                                                      "Somewhat disagree", "Strongly disagree")),
             trutrust3 = ifelse(trutrust3 == "1", "Strongly agree", 
                                ifelse(trutrust3 == "2", "Somewhat agree", 
                                       ifelse(trutrust3 == "3", "Neither agree or disagree", 
                                              ifelse(trutrust3 == "4", "Somewhat disagree", 
                                                     ifelse(trutrust3 == "5", "Strongly disagree", trutrust3))))),
             trutrust3 = factor(trutrust3, levels = c("Strongly agree", "Somewhat agree", "Neither agree or disagree", 
                                                      "Somewhat disagree", "Strongly disagree")))
#follow_up#
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
write_csv(followup, "~/Dropbox/Bangladesh Projects/Factories _ EWP/Data/follow_up/in_process_data/cleaned_followup.csv")

#R format#
saveRDS(baseline, "~/Dropbox/Bangladesh Projects/Factories _ EWP/Data/baseline/in_process_data/cleaned_baseline.RDS")
saveRDS(followup, "~/Dropbox/Bangladesh Projects/Factories _ EWP/Data/follow_up/in_process_data/cleaned_followup.RDS")

#STATA format#
  source("scripts/stata_functions.R") #reading in helper function 
baseline_stata <- prep_for_stata(baseline) #transforming data to make it STATA friendly
  write.dta(baseline_stata, "~/Dropbox/Bangladesh Projects/Factories _ EWP/Data/baseline/in_process_data/cleaned_baseline.dta")
followup_stata <- prep_for_stata(followup)
  write.dta(followup_stata, "~/Dropbox/Bangladesh Projects/Factories _ EWP/Data/follow_up/in_process_data/cleaned_followup.dta")

