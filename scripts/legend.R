##legend script#########################################################################################

#alpha numeric numbering
  #a01_short descrp., a02 etc...


##0_meta_data###########################################################################################
data_00 <- c("SubmissionDate", "start", "end", "device", "subscr", "simserial", 
"phone", "enum", "superv", "factory", "consent", "fline", "idconf_fline", 
"scannedid", "scannedid_st", "identer_fline", "UID",
"metainstanceID", "KEY", "eval", "survey_team", "scannedid_nomatch", "gender_nomatch",
"name_nomatch", "fline_nomatch", "salamount_nomatch", "factoryid_nomatch", "date",
"dup_scannedid", "dup_respid", "standgroup", "standrand", "standgroup_mod", 
"standtreatment", "standtreat", "treatgroup", "treat", "formdef_version", 
"seniority", "group", "rand") 

#standard + not in azim 
  #"scannedid"           
  #"scannedid_st"   
  #"identer_fline" 
  #"UID" 

##1_identification##############################################################################################
data_01 <- c("gender", "idconf_gender", "identer_gender", "sex", "salamount", 
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

data_02 <- c("dmem_dep_food", "dmem_dep_fin", "dmem_dep1", "dmem_dep2", "dmem_dep3", #Demographics
  "dmem_dep4", "dmem_dep5", "dmem_dep6", "dmem_dep7", "dmem_dep8", "dmem_dep9",
  "dadvice", "dresp_comm", "dcurr_status", "dfut_status", "dpast_status",
  "hhou_D", "hrent_D", "hrent_incl_yn", "hrent_incl1", #Accommodation 
  "hrent_incl2", "hrent_incl3", "hamen_D1", "hamen_D2", "hamen_D3", 
  "hamen_D4", "hamen_D5", "hn_rooms", "hamen_vill1", "hamen_vill2", 
  "hamen_vill3", "hamen_vill4", "hamen_vill5")            

##3_assets ownership############################################################################################

data_03 <- c("ashas_radio", "asnradios", "ashas_tv", "asntv", "ashas_video", #Assets ownership
  "asnvideo", "ashas_sewing", "asnsewing", "ashas_fan", "asnfan", "ashas_mobile", 
  "asnmobile", "ashas_keros", "asnkerosene", "ashas_stove", "asnstove", "ashas_pot", 
  "asnpot", "ashas_iron", "asniron", "ashas_net", "ashas_fridge", "asnfridge", 
  "ashas_pc", "asnpc", "ashas_gener", "asngenerator", "ashas_bike", "asnbike", 
  "ashas_motor", "asnmotor", "ashas_otherm", "asnotherm") 

##4_consumption#################################################################################################
data_04 <- c("cinc_share", "cper_inc_share", "cinc_from_sp", "cperc_inc_sp", 
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
data_05 <- c("sgrange_sav", "sgam_sav1", "sgam_sav2", "sgam_sav3", "sgam_sav4", #savings goals
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
data_06 <- c("crhas_loans", "crtot_loans", "crcurram_loan", "cragree_sp_loans", #credit
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

##7_numeracy_cognition##########################################################################################
data_07 <- c("nummem1", "nummem1b", "nummem2", "nummem2b", "nummem3", #general numeracy and cognition            
  "nummem4", "nummem5", "nummem6", "nummem7", "nummem8")
#standard + not in azim 

#azim + not in standard
  #nummem1b
  #nummem2b

##8_remittances#################################################################################################
data_08 <- c("r_srem_s_past6", "r_srem_am_s_past6", "r_srem_am_s_past6", #remittances transferred
  "r_sn_recipients", "r_sn_receipients", "r_sr_s_rep_count",
  "num_mem_s1", "mem_s_name1", "mem_s_age1", "mem_s_residence1",    #remittances sent
  "s_num_transfpast6_1", "s_size_transfpast6_1", "s_way_transfpast6_1", "s_num_receipast6_1", 
  "s_size_receipast6_1", "s_way_receipast6_1", "s_num_next9_1", "s_size_next9_1", 
  "s_num_recnext9_1", "s_size_recnext9_1", "num_mem_s2", "mem_s_name2", "mem_s_age2", 
  "mem_s_residence2", "s_num_transfpast6_2", "s_size_transfpast6_2", "s_way_transfpast6_2",
  "s_num_receipast6_2", "s_size_receipast6_2", "s_way_receipast6_2",  "s_num_next9_2",        
  "s_size_next9_2", "s_num_recnext9_2", "s_size_recnext9_2", "num_mem_s3",          
  "mem_s_name3", "mem_s_age3", "mem_s_residence3", "s_num_transfpast6_3", "s_size_transfpast6_3",
  "s_way_transfpast6_3", "s_num_receipast6_3", "s_size_receipast6_3", "s_way_receipast6_3", 
  "s_num_next9_3", "s_size_next9_3", "s_num_recnext9_3", "s_size_recnext9_3", "num_mem_s4", 
  "mem_s_name4", "mem_s_age4", "mem_s_residence4", "s_num_transfpast6_4", "s_size_transfpast6_4", 
  "s_way_transfpast6_4", "s_num_receipast6_4", "s_size_receipast6_4", "s_way_receipast6_4", 
  "s_num_next9_4", "s_size_next9_4", "s_num_recnext9_4", "s_size_recnext9_4", "num_mem_s5", 
  "mem_s_name5", "mem_s_age5", "mem_s_residence5", "s_num_transfpast6_5", "s_size_transfpast6_5", 
  "s_way_transfpast6_5", "s_num_receipast6_5", "s_size_receipast6_5", "s_way_receipast6_5",
  "s_num_next9_5", "s_size_next9_5", "s_num_recnext9_5", "s_size_recnext9_5", "num_mem_s6", 
  "mem_s_name6", "mem_s_age6", "mem_s_residence6", "s_num_transfpast6_6", "s_size_transfpast6_6", 
  "s_way_transfpast6_6", "s_num_receipast6_6", "s_size_receipast6_6", "s_way_receipast6_6", 
  "s_num_next9_6", "s_size_next9_6", "s_num_recnext9_6", "s_size_recnext9_6", "num_mem_s7",
  "mem_s_age7", "s_num_transfpast6_7", "s_num_receipast6_7", "s_num_next9_7", "s_num_recnext9_7", 
  "r_rrem_r_past6", "r_rrem_am_r_past6", "r_rn_senders", "r_rr_r_rep_count", "num_mem_r1", #remittances received
  "ment_rost1_1", "mem_r_name1", "mem_r_age1", "mem_r_residence1", "r_num_receipast6_1", 
  "r_size_receipast6_1", "r_way_receipast6_1", "r_num_transfpast6_1", "r_size_transfpast6_1", 
  "r_way_transfpast6_1", "r_num_next9_1", "r_size_next9_1", "r_num_recnext9_1", "r_size_recnext9_1", 
  "num_mem_r2", "ment_rost1_2", "mem_r_name2", "mem_r_age2", "mem_r_residence2", "r_num_receipast6_2",
  "r_size_receipast6_2", "r_way_receipast6_2", "r_num_transfpast6_2", "r_size_transfpast6_2", "r_way_transfpast6_2",
  "r_num_next9_2", "r_size_next9_2", "r_num_recnext9_2", "r_size_recnext9_2", "num_mem_r3", "ment_rost1_3",        
  "mem_r_name3", "mem_r_age3", "mem_r_residence3", "r_num_receipast6_3", "r_size_receipast6_3", 
  "r_way_receipast6_3", "r_num_transfpast6_3", "r_size_transfpast6_3", "r_way_transfpast6_3", 
  "r_num_next9_3", "r_size_next9_3", "r_num_recnext9_3", "r_size_recnext9_3", "num_mem_r4", "ment_rost1_4",        
  "mem_r_name4", "mem_r_age4", "mem_r_residence4", "r_num_receipast6_4", "r_size_receipast6_4", 
  "r_way_receipast6_4", "r_num_transfpast6_4", "r_size_transfpast6_4", "r_way_transfpast6_4", "r_num_next9_4",       
  "r_size_next9_4", "r_num_recnext9_4", "r_size_recnext9_4", "num_mem_r5", "ment_rost1_5", "mem_r_name5",
  "mem_r_age5", "mem_r_residence5", "r_num_receipast6_5", "r_size_receipast6_5", "r_way_receipast6_5", 
  "r_num_transfpast6_5", "r_size_transfpast6_5", "r_way_transfpast6_5", "r_num_next9_5", "r_size_next9_5", 
  "r_num_recnext9_5", "r_size_recnext9_5", "ever_trans_mob", "ever_recei_mob", "remit_tools1", 
  "remit_tools2", "remit_tools3", "remit_tools4", "remit_tools5", "remit_tools6", "remit_tools7", "remit_tools8")
  

##9_risk_time_preferences########################################################################################
data_09 <- c("r_prrisk_fin", "r_prrisk_all", "r_prlottery1", "r_prlottery2", "r_prlottery3", #risk preferences
  "r_prlottery4", "r_prlottery5", "r_prlottery6",
  "t_prtime_pref1", "t_prtime_pref2", "t_prtime_pref3", "t_prtime_pref4", #time preferences
  "t_prtime_pref5", "t_prtime_pref6", "t_prpatience")  

##10_financial_literacy_capability################################################################################
data_10 <- c("flitfin_lit1", "flitfin_lit2", "flitfin_lit3", "flitfin_lit4", "flitfin_lit5", #financial literacy
  "fcapexp_next", "fcappostp", "fcaprequests", "fcapmon_away", "fcapfin_plans", #financial capability
  "fcaptempt", "fcapenough", "fcapenough_fam", "fcapenough_repay", "fcaphealth", 
  "fcapnomon_food", "fcapcut_meals", "fcapborr_end")

##11_psych_measures###############################################################################################
data_11 <- c("trualtr_500", "trutrust1", "trutrust2", "trutrust3", "trutrust4", "trutrust5", #trust and altruism          
  "locprobl", "locmisf", "loccontr", "locluck", "locmanage") #internal locus of control 

##12_work_satisfaction############################################################################################
data_12 <- c("wsoverall_sat", "wswage_sat", "wscond_sat", "wsbenefits_sat", "wsrecommend") #work satisfaction


data_all <- c(data_00, data_01, data_02, data_03, data_04, data_05, data_06,
              data_07, data_08, data_09, data_10, data_11, data_12)

