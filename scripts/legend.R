
#alpha numeric numbering

a01_short descrp.
a02 etc...
##renaming script

azim <- read_csv("~/Dropbox/Bangladesh Projects/Factories _ EWP/Data/baseline/raw_data/azim/AzimBaseline_wtreat_noPII.csv") %>%
          mutate(factory = "04")
          rename() %>%
          select(-c())

##0_meta data###################################################################################################
c("SubmissionDate", "start", "end", "device", "subscr", "simserial", 
"phone", "enum", "superv", "factory", "consent", "fline", "idconf_fline", 
"scannedid", "scannedid_st", "identer_fline", "UID")

#standard + not in azim 
  #"scannedid"           
  #"scannedid_st"   
  #"identer_fline" 
  #"UID" 

##1_identification##############################################################################################
c("gender", "idconf_gender", "identer_gender", "sex", "salamount", 
  "idconf_salamount", "identer_salamount", "salamount_range", 
  "factoryid", "idconf_factoryid", "identer_factoryid",     
  "dinc_over", "ddiv", "ddistr", "dupaz", "dedu", "dletterb", "dlettere", 
  "dy_garment", "dy_garment", "dy_currjob", "dy_exp", "dmarried", "dot_marr", 
  "dlive_sp", "dsp_inc", "dchild", "dchild_stay", "dchild_n", "dchild_D", 
  "dreligion", "mobown_mob", "mobown_mob_num_yn", "mobmob_num_check", "numingroup")                          
  
#standard + not in azim 
  #"salamount_range"
  #"identer_factoryid"    
  #"dchild_stay"          

#azim + not in standard
  #"numingroup"
  #"mobown_mob"
  #"mobown_mob_num_yn"    
  #"mobmob_num_check"
  #"dot_marr"
  #"dchild_n"
  #"dchild_D"      

##2_accomodation################################################################################################

c("dmem_dep_food", "dmem_dep_fin", "dmem_dep1", "dmem_dep2", "dmem_dep3" #Demographics
  "dmem_dep4", "dmem_dep5", "dmem_dep6", "dmem_dep7", "dmem_dep8", "dmem_dep9",
  "dadvice", "dresp_comm", "dcurr_status", "dfut_status", "dpast_status",
  "hhou_D", "hrent_D", "hrent_incl_yn", "hrent_incl1", #Accommodation 
  "hrent_incl2", "hrent_incl3", "hamen_D1", "hamen_D2", "hamen_D3", 
  "hamen_D4", "hamen_D5", "hn_rooms", "hamen_vill1", "hamen_vill2", 
  "hamen_vill3", "hamen_vill4", "hamen_vill5")            

##3_assets ownership############################################################################################

c("ashas_radio", "asnradios", "ashas_tv", "asntv", "ashas_video", #Assets ownership
  "asnvideo", "ashas_sewing", "asnsewing", "ashas_fan", "asnfan", "ashas_mobile", 
  "asnmobile", "ashas_keros", "asnkerosene", "ashas_stove", "asnstove", "ashas_pot", 
  "asnpot", "ashas_iron", "asniron", "ashas_net", "ashas_fridge", "asnfridge", 
  "ashas_pc", "asnpc", "ashas_gener", "asngenerator", "ashas_bike", "asnbike", 
  "ashas_motor", "asnmotor", "ashas_otherm", "asnotherm") 

##4_consumption#################################################################################################
c("cinc_share", "cper_inc_share", "cinc_from_sp", "cperc_inc_sp", 
  "cmem_budget", "ccontr_food", "ccontr_special", "ccontr_large", 
  "b5pay_rent", "b5pay_bills", "b5pay_school", #Budgeting and disposable income - 5 days after payday
  "b5pay_loans", "b5money_sporfam", "b5money_sent", "b5money_else", "b5tot_exp_5", 
  "blelse_food", "blelse_special",  #Budgeting and disposable income - Income left
  "blelse_saving", "blelse_services", "blelse_other", "blelse_ot_spec", "bltot_exp_else",
  "hhehhpay_rent", "hhehhpay_bills", "hhehhpay_school", #Household Expenditures
  "hhehhpay_loans", "hhehhmoney_fam", "hhehhmoney_sent", "hhehh_food", "hhehh_special", 
  "hhehh_saving", "hhehh_services", "hhehh_other", "hhehh_other_spec", 
  "c_prbig_exp", "c_pram_big_exp", "c_prbig_withdr", "c_pram_big_withdr", #Consumption Priorities
  "c_pr2given_money1", "c_pr2given_money2", "c_pr2given_money3", "c_pr2rep_pr_count",
  "purp_type1", "nfe_purp1", "am_purp1", "purp_type2", "nfe_purp2", "am_purp2", 
  "purp_type3", "nfe_purp3", "am_purp3",  "c_pr2tot_am_purp")            

##5_savings#####################################################################################################
c("sgrange_sav", "sgam_sav1", "sgam_sav2", "sgam_sav3", "sgam_sav4", #savings goals
  "sgam_sav_sp", "sgstart_job_save", "sgam_plan_save", "sgachi_goal_save",
  "sgagree_sav", "sgsave_month", "sgamount_month", "sgam_save_12",
  "sgsave_goals1", "sgsave_goals2", "sgsave_goals3", "sgsave_goals4",
  "sgrep_g_count", "goal_type1", "nfe_goal1", "goal_am1", "goal_device1",
  "goal_ot_dev1", "goal_type2", "nfe_goal2", "goal_am2", "goal_device2", 
  "goal_ot_dev2", "goal_type3", "nfe_goal3", "goal_am3", "goal_device3",
  "goal_ot_dev3", "goal_type4", "nfe_goal4", "goal_am4", "goal_device4", "goal_ot_dev4",
  "fsacc_for_sav1", "fsacc_for_sav2", "fsacc_for_sav3", "fsacc_for_sav4", #formal account savings
  "fsrep_f_count", "acc_type_for1", "nfe_for1", "n_f_acc1", "instit_for_acc1_1", 
  "instit_for_acc2_1", "bal_for_acc1", "oper_for_acc1", "for_avail_sp1", "for_only_sp1", 
  "bal_for_sp1", "acc_type_for2", "nfe_for2", "n_f_acc2", "instit_for_acc1_2", "instit_for_acc2_2", 
  "bal_for_acc2", "oper_for_acc2", "for_avail_sp2", "for_only_sp2", "bal_for_sp2", 
  "fswhy_not_b1", "fswhy_not_b2", "fswhy_not_b3", "fsno_b_trans1", "fsno_b_trans2", 
  "fsno_b_trans3", "fsb_trans1", "fsb_trans1", "fsn_form_gram", 
  "isacc_info_sav1", "isacc_info_sav2", "isrep_i_count",  #informal account savings
  "acc_type_info1", "nfe_info1", "bal_info_acc1", "info_avail_sp1", "info_use_sp1", 
  "bal_info_sp1", "acc_type_info2", "nfe_info2", "bal_info_acc2", "info_avail_sp2", 
  "info_use_sp2", "bal_info_sp2",  "isother_acc",  "isname_other_acc", "isbal_other",
  "isother_avail_sp", "isother_use_sp", "isbal_ot_info_sp", "need_5000", "poss_sav3") 

#standard + not in azim 
  #"isbal_other"
  #isother_avail_sp
  #isother_use_sp
  #isbal_ot_info_sp
#azim + not in standard
  #"fsn_form_gram"

##6_credit######################################################################################################
c("crhas_loans", "crtot_loans", "crcurram_loan", "cragree_sp_loans", #credit
  "lloans_out1", "lloans_out2", "lloans_out3", "lrep_l_count", #loans outstanding        
  "nfe_loan1", "purp_loan1", "plan_exp_loan1", "amount_loan1",
  "recipient_loan1", "repay_loan1", "num_paym_loan1", "n_paym_left_loan1",   
  "freq_paym_loan1", "size_paym_loan1", "loan_jointly1", "nfe_loan2",           
  "purp_loan2", "plan_exp_loan2", "amount_loan2", "recipient_loan2", "repay_loan2",         
  "num_paym_loan2", "n_paym_left_loan2", "freq_paym_loan2", "size_paym_loan2", 
  "loan_jointly2", "nfe_loan3", "purp_loan3", "plan_exp_loan3", "amount_loan3",        
  "recipient_loan3", "repay_loan3", "num_paym_loan3", "n_paym_left_loan3", 
  "freq_paym_loan3", "size_paym_loan3", "loan_jointly3", 
  "in_lloan_ref1", "in_lloan_ref2", "in_lloan_ref3", #other info about loans
  "in_lloan_ref4", "in_lworry_repay", "in_ln_loans_plan", "in_lam_plan", 
  "in_lpurp_plan", "in_lrecip_plan", "in_lsalary_adv", "in_lfreq_sal_adv",
  "in_ladv_purp", "in_lloan_coworker")

#standard + not in azim 
  #"in_lfreq_sal_adv"
  #"in_ladv_purp"

#azim + not in standard
  #"in_lloan_coworker"   

##7_cognition###################################################################################################
c("nummem1", "nummem1b", "nummem2", "nummem2b", "nummem3" #general numeracy and cognition            
  "nummem4", "nummem5", "nummem6", "nummem7", "nummem8", 
  "flitfin_lit1", "flitfin_lit2", "flitfin_lit3", #financial literacy
  "flitfin_lit4", "flitfin_lit5")

#standard + not in azim 

#azim + not in standard
  #nummem1b
  #nummem2b

##8_remittances#################################################################################################

#standard + not in azim 

#azim + not in standard

##9_psych measures##############################################################################################

#standard + not in azim 

#azim + not in standard




