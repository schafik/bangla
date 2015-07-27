##gathering baseline & follow-up data

#reading in necessary packages##################################################
source("scripts/load_packages.R")
source("scripts/cleaning_functions.R")

# baseline##############################################################################
baseline <- readRDS("~/Dropbox/Bangladesh Projects/Factories _ EWP/Data/baseline/raw_data/raw_baseline.RDS") %>%
                dplyr::filter(factory != "02") #dropping meek factory from data

#azim baseline###############################################################################
azim9 <- read_csv("~/Dropbox/Bangladesh Projects/Factories _ EWP/Data/baseline/raw_data/azim/baseline_survey_final9_noPII.csv") %>%
            mutate(azim_survey_day = 1)
azim10 <- read_csv("~/Dropbox/Bangladesh Projects/Factories _ EWP/Data/baseline/raw_data/azim/baseline_survey_final10_noPII.csv") %>% 
            mutate(azim_survey_day = 2)
azim11 <- read_csv("~/Dropbox/Bangladesh Projects/Factories _ EWP/Data/baseline/raw_data/azim/baseline_survey_final11_noPII.csv") %>%
            mutate(azim_survey_day = 3)
azim10_11 <- rbind(azim10, azim11); remove(azim10, azim11) #because they have no conlifcts in colnames
azim12 <- read.csv("~/Dropbox/Bangladesh Projects/Factories _ EWP/Data/baseline/raw_data/azim/baseline_survey_final12noPII.csv", stringsAsFactors=F) %>%
            mutate(azim_survey_day = "4_beyond")
  names(azim12) <- str_replace_all(names(azim12), "\\.", "-") #cleaning colnames to match 10-11

#combining azim#
azim10_12 <- rbind(azim10_11, azim12); remove(azim10_11, azim12)
names(azim10_12) <- str_replace_all(names(azim10_12), "-", "_") #cleaning colnames from "-"
names(azim9) <- str_replace_all(names(azim9), "-", "_") #cleaning colnames from "-"
azim9_12 <- rbind.fill(azim9, azim10_12); remove(azim9, azim10_12)

#cleaning colnames of azim to match other baseline#
names(azim9_12) <- str_replace_all(names(azim9_12), "id_", "id")
names(azim9_12) <- str_replace_all(names(azim9_12), "d_", "d")
names(azim9_12) <- str_replace_all(names(azim9_12), "as_", "as")
names(azim9_12) <- str_replace_all(names(azim9_12), "c_", "c")
names(azim9_12) <- str_replace_all(names(azim9_12), "bl_", "bl")
names(azim9_12) <- str_replace_all(names(azim9_12), "pr2_", "pr2")
names(azim9_12) <- str_replace_all(names(azim9_12), "pr_", "pr")
names(azim9_12) <- str_replace_all(names(azim9_12), "sg_", "sg")
names(azim9_12) <- str_replace_all(names(azim9_12), "fs_", "fs")
names(azim9_12) <- str_replace_all(names(azim9_12), "is_", "is")
names(azim9_12) <- str_replace_all(names(azim9_12), "cr_", "cr")
names(azim9_12) <- str_replace_all(names(azim9_12), "l_", "l")
names(azim9_12) <- str_replace_all(names(azim9_12), "s_", "s")
names(azim9_12) <- str_replace_all(names(azim9_12), "pr_", "pr")
names(azim9_12) <- str_replace_all(names(azim9_12), "tru_", "tru")
names(azim9_12) <- str_replace_all(names(azim9_12), "flit_", "flit")
names(azim9_12) <- str_replace_all(names(azim9_12), "fcap_", "fcap")
names(azim9_12) <- str_replace_all(names(azim9_12), "loc_", "loc")
names(azim9_12) <- str_replace_all(names(azim9_12), "ws_", "ws")

#consolidating baselines#####################################################################

azim9_12 <- azim9_12 %>% mutate(
      SubmissionDate = mdy_hm(SubmissionDate), start = mdy_hm(start), end = mdy_hm(end)) %>%
  dplyr::select(-c(idn_dem, dladdernote1, b5_note_exp5, #throwing away useless columns 
                   sgladdernote2, locn_cont, wsladdernote7, wsn_work_sat, n_end,
                   r_prn_lott, t_prn_time, t_prladdernote5, trun_trust, truladdernote6,
                   r_r_note_repeat_rem_r, r_sn_repeat_rem_s, num_intro_n, num_intro_nfb,
                   crladdernote3, isn_info_sav, n_base, n_intro, n_consent, h_n_hou, 
                   h_hou_vill, asn_as, cn_coins1, n_coins2, tot_more, n_coins3, 
                   cpr2n_purp, bln_else, tot_else_more, hhe_n_hhexp, sgn_coins4,
                   fsn_form_sav, r_prladdernote4, SET_OF_cpr2rep_pr, SET_OF_sgrep_g, 
                   SET_OF_fsrep_f, SET_OF_isrep_i, SET_OF_lrep_l, SET_OF_r_sr_srep, 
                   SET_OF_r_r_r_r_rep)) %>%           
  dplyr::rename(gender = gen, fline = line, idconf_fline= idconf_line,
                identer_fline = identer_line, r_rrem_r_past6 = r_r_rem_r_past6,
                r_rrem_am_r_past6 = r_r_rem_am_r_past6, r_rn_senders = r_r_n_senders,
                r_rr_r_rep_count = r_r_r_r_rep_count, metainstanceID = meta_instanceID,
                hn_rooms = h_n_rooms) %>%
  dplyr::mutate(idconf_salam = ifelse(idconf_salam == 1, "Yes", "No"),
                identer_salam = salary_bins(identer_salam),
                mob_own_mob = ifelse(mob_own_mob == 1, "Yes", "No"),
                mob_own_mob_num_yn = ifelse(mob_own_mob_num_yn == 1, "Yes", "No"),
                mob_mob_num_check = ifelse(mob_mob_num_check == 1, "Yes", "No"),
                in_lloan_coworker = ifelse(in_lloan_coworker == 1, "Yes", "No"),
                num_mem1b = ifelse(num_mem1b == 1, "Yes", "No"),
                num_mem2b = ifelse(num_mem2b == 1, "Yes", "No"),
                dot_marr = ifelse(dot_marr == 1, "divorced/separated", 
                           ifelse(dot_marr == 2, "widowed",
                           ifelse(dot_marr == 3, "spouse left",
                           ifelse(dot_marr == 4, "never married", NA)))))
#13 columns!?!?!?!?
# thirteen <- read.dta("~/Dropbox/Bangladesh Projects/Factories _ EWP/Field Activities/09 Data_for_PIs (no PII)/Round 1/Azim_baseline_noPII.dta")

#combining and writing out lazim/standard + azim#
baseline <- rbind.fill(baseline, azim9_12); remove(azim9_12)

write_csv(baseline, "~/Dropbox/Bangladesh Projects/Factories _ EWP/Data/baseline/raw_data/FULL_raw_baseline.csv")
saveRDS(baseline, "~/Dropbox/Bangladesh Projects/Factories _ EWP/Data/baseline/raw_data/FULL_raw_baseline.rds")
  #STATA format#
  source("scripts/stata_functions.R") #reading in helper function 
  baseline_stata <- prep_for_stata(baseline) #transforming data to make it STATA friendly
write.dta(baseline_stata, "~/Dropbox/Bangladesh Projects/Factories _ EWP/Data/baseline/in_process_data/FULL_raw_baseline.dta")

#follow up data################################################################################

follow1 <- readRDS("~/Dropbox/Bangladesh Projects/Factories _ EWP/Data/follow_up/raw_data/raw_followup1.RDS") %>%
            dplyr::filter(factory != "02") #dropping meek

follow2 <- read_excel("~/Dropbox/Bangladesh Projects/Factories _ EWP/Field Activities/09 Data_for_PIs (no PII)/Round 1/follow-up2_1st_round_cleaned_wtreat.xls") 
#             dplyr::filter(factory != "02") #dropping meek

#combining + writing out data#
follow_up <- rbind.fill(follow1, follow2); remove(follow1, follow2)

write_csv(follow_up, "~/Dropbox/Bangladesh Projects/Factories _ EWP/Data/follow_up/raw_data/FULL_raw_followup.csv")
saveRDS(follow_up, "~/Dropbox/Bangladesh Projects/Factories _ EWP/Data/follow_up/raw_data/FULL_raw_followup.rds")
  #STATA format#
  source("scripts/stata_functions.R") #reading in helper function 
  follow_stata <- prep_for_stata(follow_up) #transforming data to make it STATA friendly
write.dta(follow_stata, "~/Dropbox/Bangladesh Projects/Factories _ EWP/Data/follow_up/raw_data/FULL_raw_followup.dta")



