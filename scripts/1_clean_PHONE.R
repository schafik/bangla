#PHONE SURVEY###########################################################################
#cleaning and writing out to csv/STATA/r#####################################
####################################################################


#load libraries
source("scripts/load_packages.R")


#read in data
phone <- read_excel("~/Dropbox/Bangladesh Projects/Factories _ EWP/Data/phone follow up/StandardPhoneFollowUp08-11-15.xlsx") %>%

  #delete
  select(-c(device:phone, consent:idconf_factoryid, durdurables2:durdurables12, fsacc_for_sav3:fsacc_for_sav14,
            isacc_info_sav2:isacc_info_sav8, nfe_info2, balance_info_acc2, l_outwhat_loan2, l_outwhat_loan3)) %>%
  
  #convert
  mutate(sgam_sav = ifelse(!is.na(sgam_sav1), sgam_sav1, ifelse(!is.na(sgam_sav2), sgam_sav2,
                    ifelse(!is.na(sgam_sav3), sgam_sav3, ifelse(!is.na(sgam_sav4), sgam_sav4, 
                    ifelse(!is.na(sgam_sav5), sgam_sav5, ifelse(!is.na(sgam_sav6), sgam_sav6,
                    ifelse(!is.na(sgam_sav7), sgam_sav7, ifelse(!is.na(sgam_sav8), sgam_sav8, 
                    ifelse(!is.na(sgam_sav9), sgam_sav9, ifelse(!is.na(sgam_sav10), sgam_sav10,
                    ifelse(!is.na(sgam_sav11), sgam_sav11, ifelse(!is.na(sgam_sav12), sgam_sav12, 
                    ifelse(!is.na(sgam_sav13), sgam_sav13, ifelse(!is.na(sgam_sav14), sgam_sav14, 
                    ifelse(!is.na(sgam_sav15), sgam_sav15, ifelse(!is.na(sgam_sav16), sgam_sav16,
                    ifelse(!is.na(sgam_sav17), sgam_sav17, NA)))))))))))))))))) %>% 
  
  #deleting and reordering
  select(-c(sgam_sav1:sgam_sav17)) %>% select(SubmissionDate:sgrange_sav, sgam_sav, fsacc_for_sav1:KEY) %>%
  
  #clean data
  mutate(nfe_for1 = ifelse(str_detect(nfe_for1, "DPS ACCOUNTS"), "DPS ACCOUNTS",
                    ifelse(str_detect(nfe_for1, "OTHER FIXED DEPOSIT ACCOUNTS"), "OTHER FIXED DEPOSIT ACCOUNTS",
                    ifelse(str_detect(nfe_for1, "INSURANCE SAVING PRODUCTS"), "INSURANCE SAVING PRODUCTS",
                    ifelse(str_detect(nfe_for1, "Islamic DPS Account"), "Islamic DPS Account",
                    ifelse(str_detect(nfe_for1, "ISLAMIC INSURANCE SAVINGS PRODUCTS"), "ISLAMIC INSURANCE SAVINGS PRODUCTS",
                    ifelse(str_detect(nfe_for1, "ISLAMIC BANK ACCOUNTS"), "ISLAMIC BANK ACCOUNTS",
                    ifelse(str_detect(nfe_for1, "MICROFINANCE INSTITUTION"), "ACCOUNTS AT A MICROFINANCE INSTITUTION",
                    ifelse(str_detect(nfe_for1, "MOBILE ACCOUNTS"), "MOBILE ACCOUNTS",
                    ifelse(str_detect(nfe_for1, "BANK ACCOUNTS"), "BANK ACCOUNTS",
                    ifelse(str_detect(nfe_for1, "POST OFFICE"), "POST OFFICE ACCOUNTS", 
                    ifelse(str_detect(nfe_for2, "None of the above"), "None of the above", NA))))))))))),                         
         nfe_for2 = ifelse(str_detect(nfe_for2, "DPS ACCOUNTS"), "DPS ACCOUNTS",
                    ifelse(str_detect(nfe_for2, "OTHER FIXED DEPOSIT ACCOUNTS"), "OTHER FIXED DEPOSIT ACCOUNTS",
                    ifelse(str_detect(nfe_for2, "INSURANCE SAVING PRODUCTS"), "INSURANCE SAVING PRODUCTS",
                    ifelse(str_detect(nfe_for2, "Islamic DPS Account"), "Islamic DPS Account",
                    ifelse(str_detect(nfe_for2, "ISLAMIC INSURANCE SAVINGS PRODUCTS"), "ISLAMIC INSURANCE SAVINGS PRODUCTS",
                    ifelse(str_detect(nfe_for2, "ISLAMIC BANK ACCOUNTS"), "ISLAMIC BANK ACCOUNTS",
                    ifelse(str_detect(nfe_for2, "MICROFINANCE INSTITUTION"), "ACCOUNTS AT A MICROFINANCE INSTITUTION",
                    ifelse(str_detect(nfe_for2, "MOBILE ACCOUNTS"), "MOBILE ACCOUNTS",
                    ifelse(str_detect(nfe_for2, "BANK ACCOUNTS"), "BANK ACCOUNTS",
                    ifelse(str_detect(nfe_for2, "POST OFFICE"), "POST OFFICE ACCOUNTS", 
                    ifelse(str_detect(nfe_for2, "None of the above"), "None of the above", NA))))))))))),
         nfe_for3 = ifelse(str_detect(nfe_for3, "DPS ACCOUNTS"), "DPS ACCOUNTS",
                    ifelse(str_detect(nfe_for3, "OTHER FIXED DEPOSIT ACCOUNTS"), "OTHER FIXED DEPOSIT ACCOUNTS",
                    ifelse(str_detect(nfe_for3, "INSURANCE SAVING PRODUCTS"), "INSURANCE SAVING PRODUCTS",
                    ifelse(str_detect(nfe_for3, "Islamic DPS Account"), "Islamic DPS Account",
                    ifelse(str_detect(nfe_for3, "ISLAMIC INSURANCE SAVINGS PRODUCTS"), "ISLAMIC INSURANCE SAVINGS PRODUCTS",
                    ifelse(str_detect(nfe_for3, "ISLAMIC BANK ACCOUNTS"), "ISLAMIC BANK ACCOUNTS",
                    ifelse(str_detect(nfe_for3, "MICROFINANCE INSTITUTION"), "ACCOUNTS AT A MICROFINANCE INSTITUTION",
                    ifelse(str_detect(nfe_for3, "MOBILE ACCOUNTS"), "MOBILE ACCOUNTS",
                    ifelse(str_detect(nfe_for3, "BANK ACCOUNTS"), "BANK ACCOUNTS",
                    ifelse(str_detect(nfe_for3, "POST OFFICE"), "POST OFFICE ACCOUNTS", 
                    ifelse(str_detect(nfe_for3, "None of the above"), "None of the above", NA))))))))))),                
         nfe_info1 = ifelse(str_detect(nfe_info1, "à¦—à§\u008dà¦°à¦¾à¦®à§‡à¦"), "SAVINGS KEPT WITH FAMILY OR FRIEND",
                     ifelse(str_detect(nfe_info1, "SELF HELP"), "SELF HELP GROUP OR OTHER SAVINGS GROUP",
                     ifelse(str_detect(nfe_info1, "FRIENDS IN DHAKA"), "SAVINGS KEPT WITH FAMILY OR FRIENDS IN DHAKA",
                     ifelse(str_detect(nfe_info1, "SAVINGS IN YOUR HOME IN DHAKA"), "SAVINGS IN YOUR HOME IN DHAKA",
                     ifelse(str_detect(nfe_info1, "NEIGHBORHOOD"), "NEIGHBORHOOD DEPOSIT COLLECTOR",
                     ifelse(str_detect(nfe_info1, "TANA Society"), "TANA Society",
                     ifelse(str_detect(nfe_info1, "OTHER"), "OTHER",
                     ifelse(str_detect(nfe_info1, "None of the above"), "None of the above", NA)))))))))       

#write out data
write_csv(phone, "~/Dropbox/Bangladesh Projects/Factories _ EWP/Data/phone follow up/Phone_Fup_clean_08-11-15.csv")
saveRDS(phone, "~/Dropbox/Bangladesh Projects/Factories _ EWP/Data/phone follow up/Phone_Fup_clean_08-11-15.RDS")

#STATA format#
source("scripts/stata_functions.R") #reading in helper function 
phone_stata <- prep_for_stata(phone) #transforming data to make it STATA friendly
write.dta(phone_stata, "~/Dropbox/Bangladesh Projects/Factories _ EWP/Data/phone follow up/Phone_Fup_clean_08-11-15.dta")




                     
  