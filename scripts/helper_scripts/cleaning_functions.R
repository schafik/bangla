#cleaning functions#


#################################################################################baseline

acc_type <- function(x) { #baseline + azim => acc_type_info1, acc_type_info2
  x <- ifelse(!(x %in% c(1:9)), NA, x)
  x <- ifelse(x == 1, "SAVINGS IN YOUR HOME IN DHAKA", ifelse(x == 2, "SAVINGS KEPT WITH FAMILY OR FRIENDS IN DHAKA", 
       ifelse(x == 3, "SAVINGS KEPT WITH FAMILY OR FRIENDS IN VILLAGEHOME (OR OUTSIDE DHAKA)", 
       ifelse(x == 4, "ROSCA", ifelse(x == 5, "CHIT FUND SAVINGS", ifelse(x == 6, "SELF HELP GROUP OR OTHER SAVINGS GROUP", 
       ifelse(x == 7, "NEIGHBORHOOD DEPOSIT COLLECTOR", ifelse(x == 8, "OTHER", 
       ifelse(x == 9, "None of the above", NA))))))))) }

fs_noB <- function(x) { #baseline => fsno_b_trans1, fsno_b_trans2, fsno_b_trans3
  x <- ifelse(!(x %in% c(1:8, 99, -100)), NA, x) 
  x <- ifelse(x == 1, "Use someone else's bank account", ifelse(x == 2, "Use other types of accounts you have in your name (postal accounts, mobile platforms)", 
       ifelse(x == 3, "Use someone else's accounts (postal accounts, mobile platforms)", ifelse(x == 4, "Use flexiload credit transfer", 
       ifelse(x == 5, "Use ATM though my mobile account", ifelse(x == 6, "Use curier service",
       ifelse(x == 7, "Other", ifelse(x == 8, "Manages transactions with cash on his/her own", 
       ifelse(x == 99, "Don't know", ifelse(x == -100, "Refused to answer", NA)))))))))) }
                                                                                                                              
instit <- function(x) { #standard => instit_for_acc2_1
  x <- ifelse(!(x %in% c(1:57, 99, -100)), NA, x) 
  x <- ifelse(x == 1, "AB Bank Limited", ifelse(x == 2, "Agrani Bank", ifelse(x == 3, "Al-Arafah Islami Bank Limited",
       ifelse(x == 4, "Ansar VDP Unnayan Bank", ifelse(x == 5, "Bangladesh Commerce Bank Limited",
       ifelse(x == 6, "Bank Alfalah", ifelse(x == 7, "Bank Asia Limited",
       ifelse(x == 8, "BRAC Bank Limited", ifelse(x == 9, "Citibank NA", ifelse(x == 10, "Commercial Bank of Ceylon", 
       ifelse(x == 11, "Dhaka Bank Limited", ifelse(x == 12, "Dutch Bangla Bank Limited", ifelse(x == 13, "Eastern Bank Limited", 
       ifelse(x == 14, "Export Import Bank of Bangladesh Limited", ifelse(x == 15, "Farmers Bank Limited", 
       ifelse(x == 16, "First Security Islami Bank Limited", ifelse(x == 17, "Habib Bank Limited", 
       ifelse(x == 18, "HSBC", ifelse(x == 19, "ICB Islamic Bank", ifelse(x == 20, "IFIC Bank Limited", 
       ifelse(x == 21, "Islami Bank Bangladesh Limited", ifelse(x == 22, "Jamuna Bank Limited", 
       ifelse(x == 23, "Jonota Bank", ifelse(x == 24, "Karmashangosthan Bank", 
       ifelse(x == 25, "Meghna Bank Limited", ifelse(x == 26, "Mercantile Bank Limited", 
       ifelse(x == 27, "Midland Bank Limited", ifelse(x == 28, "Modhumoti Bank Limited", 
       ifelse(x == 29, "Mutual Trust Bank Limited", ifelse(x == 30, "National Bank Limited", 	
       ifelse(x == 31, "National Bank of Pakistan", ifelse(x == 32, "NCC Bank Limited",   
       ifelse(x == 33, "NRB Bank Limited", ifelse(x == 34, "NRB Commercial Bank Limited",   
       ifelse(x == 35, "One Bank Limited", ifelse(x == 36, "Post Office Savings Bank",   
       ifelse(x == 37, "Prime Bank Limited",  ifelse(x == 38, "Progoti Co-operative Land Development Bank Limited",   
       ifelse(x == 39, "Pubali Bank Limited", ifelse(x == 40, "Rupali Bank", ifelse(x == 41, "Shahjalal islami bank Limited",   
       ifelse(x == 42, "Social Islami Bank Limited", ifelse(x == 43, "Sonali Bank",   
       ifelse(x == 44, "South Bangla Agriculture and Commerce Bank Ltd", ifelse(x == 45, "Southeast Bank Limited",   
       ifelse(x == 46, "Standard Bank Limited", ifelse(x == 47, "Standard Chartered Bank",   
       ifelse(x == 48, "State Bank of India", ifelse(x == 49, "The City Bank Limited",   
       ifelse(x == 50, "The Premier Bank Limited", ifelse(x == 51, "Trust Bank Limited",   
       ifelse(x == 52, "Union Bank Limited", ifelse(x == 53, "United Commercial Bank Ltd",   
       ifelse(x == 54, "Uttara Bank Limited", ifelse(x == 55, "Woori Bank", ifelse(x == 56, "Other institutions",   
       ifelse(x == 57, "Microfinance Institution/NGO", ifelse(x == 99, "Don’t know", 
       ifelse(x == -100, "Refused to answer", NA)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))    
}


acc_type <- function(x) {  #azim => acc_type_for1, acc_type_for2
                           #standard => acc_type_for2
  x <- ifelse(!(x %in% c(1:14)), NA, x) 
  x <- ifelse(x == 1, "BANK ACCOUNTS - CURRENT",
       ifelse(x == 2, "BANK ACCOUNTS - SAVINGS", 
       ifelse(x == 3, "DPS ACCOUNTS", 
       ifelse(x == 4, "OTHER FIXED DEPOSIT ACCOUNTS", 
       ifelse(x == 5, "INSURANCE SAVING PRODUCTS", 
       ifelse(x == 6, "ISLAMIC BANK ACCOUNTS - CURRENT", 
       ifelse(x == 7, "ISLAMIC ACCOUNTS - SAVINGS", 
       ifelse(x == 8, "ISLAMIC FIXED DEPOSIT ACCOUNTS", 
       ifelse(x == 9, "ISLAMIC INSURANCE SAVINGS PRODUCTS", 
       ifelse(x == 10, "MOBILE ACCOUNTS", 
       ifelse(x == 11, "POST OFFICE ACCOUNTS", 
       ifelse(x == 12, "ACCOUNTS AT A MICROFINANCE INSTITUTION", 
       ifelse(x == 13, "OTHER TYPE OF FORMAL ACCOUNTS", 
       ifelse(x == 14, "None of the above", NA))))))))))))))
}

# rent_bins <- function(x) {
#   x <- ifelse(!(x %in% c(1:8)), NA, x) 
#   x <- ifelse(x == 1, "less than 2000 Taka/month",
#        ifelse(x == 2, "between 2000 and 2500 Taka/month",
#        ifelse(x == 3, "between 2500 and 3000 Taka/month",
#        ifelse(x == 4, "between 3000 and 3500 Taka/month",
#        ifelse(x == 5, "between 3500 and 4000 Taka/month",      
#        ifelse(x == 6, "between 4000 and 4500 Taka/month",      
#        ifelse(x == 7, "between 4500 and 5000 Taka/month",      
#        ifelse(x == 8, "more than or equal to 5000 Taka/month", NA))))))))
#   x <- factor(x, levels=c("less than 2000 Taka/month", "between 2000 and 2500 Taka/month",
#                           "between 2500 and 3000 Taka/month", "between 3000 and 3500 Taka/month",
#                           "between 3500 and 4000 Taka/month", "between 4000 and 4500 Taka/month",
#                           "between 4500 and 5000 Taka/month", "more than or equal to 5000 Taka/month"))
# }
# 
# consump_priority <- function(x) {
#   x <- ifelse(!(x %in% c(1:18)), NA, x)
#   x <- ifelse(x == 1, "Education related costs", 
#        ifelse(x == 2, "Health related costs",
#        ifelse(x == 3, "Rent",
#        ifelse(x == 4, "Food or Bills such as gas, electricity, water",
#        ifelse(x == 5, "Enjoyment and personal expenditures",
#        ifelse(x == 6, "Clothes, shoes, jewelery",
#        ifelse(x == 7, "Household assets (fan, refrigerator, mattress,furniture)",
#        ifelse(x == 8, "Vehicle purchase, maintenance and repair",
#        ifelse(x == 9, "Home construction, improvement, renovation",
#        ifelse(x == 10, "Investment to make money",
#        ifelse(x == 11, "Investment to buy land or house",
#        ifelse(x == 12, "Pay off loan or settle debt",
#        ifelse(x == 13, "Gifts for another person or organization",
#        ifelse(x == 14, "Weddings, funerals, religious functions",
#        ifelse(x == 15, "Saving for emergencies",
#        ifelse(x == 16, "Saving for an investment in physical assets or education",
#        ifelse(x == 17, "None",
#        ifelse(x == 18, "Other", NA))))))))))))))))))
#   x <- factor(x, levels=c("Education related costs", "Health related costs", "Rent", "Food or Bills such as gas, electricity, water",
#                           "Enjoyment and personal expenditures", "Clothes, shoes, jewelery", 
#                           "Household assets (fan, refrigerator, mattress,furniture)", "Vehicle purchase, maintenance and repair", 
#                           "Home construction, improvement, renovation", "Investment to make money",
#                           "Investment to buy land or house", "Pay off loan or settle debt", 
#                           "Gifts for another person or organization", "Weddings, funerals, religious functions",
#                           "Saving for emergencies", "Saving for an investment in physical assets or education", "None", "Other"))
# }
# 
# 
# account_bins <- function(x) {
#   x <- ifelse(!(x %in% c(1:13)), NA, x)
#   x <- ifelse(x == 1, "BANK ACCOUNTS - CURRENT", 
#        ifelse(x == 2, "BANK ACCOUNTS - SAVINGS",
#        ifelse(x == 3, "DPS ACCOUNTS",
#        ifelse(x == 4, "OTHER FIXED DEPOSIT ACCOUNTS",
#        ifelse(x == 5, "INSURANCE SAVING PRODUCTS",
#        ifelse(x == 6, "ISLAMIC BANK ACCOUNTS - CURRENT",
#        ifelse(x == 7, "ISLAMIC ACCOUNTS - SAVINGS",
#        ifelse(x == 8, "ISLAMIC FIXED DEPOSIT ACCOUNTS",
#        ifelse(x == 9, "ISLAMIC INSURANCE SAVINGS PRODUCTS",
#        ifelse(x == 10, "MOBILE ACCOUNTS",
#        ifelse(x == 11, "POST OFFICE ACCOUNTS",
#        ifelse(x == 12, "ACCOUNTS AT A MICROFINANCE INSTITUTION",
#        ifelse(x == 13, "OTHER TYPE OF FORMAL ACCOUNTS",
#        ifelse(x == 14, "None of the above", NA))))))))))))))
#   x <- factor(x, levels=c("BANK ACCOUNTS - CURRENT", "BANK ACCOUNTS - SAVINGS",
#                 "DPS ACCOUNTS", "OTHER FIXED DEPOSIT ACCOUNTS", "INSURANCE SAVING PRODUCTS",
#                 "ISLAMIC BANK ACCOUNTS - CURRENT", "ISLAMIC ACCOUNTS - SAVINGS",
#                 "ISLAMIC FIXED DEPOSIT ACCOUNTS", "ISLAMIC INSURANCE SAVINGS PRODUCTS",
#                 "MOBILE ACCOUNTS", "POST OFFICE ACCOUNTS", "ACCOUNTS AT A MICROFINANCE INSTITUTION",
#                 "OTHER TYPE OF FORMAL ACCOUNTS", "None of the above"))
# }
# 
# salary_bins <- function(x) {
#   x <- ifelse(!(x %in% c(1:15)), NA, x)
#   x <- ifelse(x == 1, "no salary",
#        ifelse(x == 2, "less than 5000 Taka",
#        ifelse(x == 3, "between 5000 and 5500 Taka",
#        ifelse(x == 4, "between 5500 and 6000 Taka",
#        ifelse(x == 5, "between 6000 and 6500 Taka",      
#        ifelse(x == 6, "between 6500 and 7000 Taka",
#        ifelse(x == 7, "between 7000 and 7500 Taka",
#        ifelse(x == 8, "between 7500 and 8000 Taka",
#        ifelse(x == 9, "between 8000 and 8500 Taka",
#        ifelse(x == 10, "between 8500 and 9000 Taka",
#        ifelse(x == 11, "between 9000 and 9500 Taka",
#        ifelse(x == 12, "between 9500 and 10000 Taka",
#        ifelse(x == 13, "between 10000 and 12000 Taka",
#        ifelse(x == 14, "between 12000 and 15000 Taka", 
#        ifelse(x == 15, "between 15000 and 17000 Taka",
#        ifelse(x == 16, "between 17000 and 20000 Taka",              
#        ifelse(x == 17, "between 20000 and 25000 Taka", 
#        ifelse(x == 18, "between 25000 and 30000 Taka", 
#        ifelse(x == 19, "more than 30000", NA)))))))))))))))))))
#   x <- factor(x, levels=c("no salary", "less than 5000 Taka", "between 5000 and 5500 Taka", 
#                           "between 5500 and 6000 Taka", "between 6000 and 6500 Taka",
#                           "between 6500 and 7000 Taka", "between 7500 and 8000 Taka",
#                           "between 8000 and 8500 Taka", "between 8500 and 9000 Taka",
#                           "between 9000 and 9500 Taka", "between 9500 and 10000 Taka", 
#                           "between 10000 and 12000 Taka", "between 12000 and 15000 Taka", 
#                           "between 15000 and 17000 Taka", "between 17000 and 20000 Taka", 
#                           "between 20000 and 25000 Taka", "between 25000 and 30000 Taka",
#                           "more than 30000"))
# }
# 
# 
# #################################################################################follow up
# 
# consump_bins <- function(x) {
#   x <- ifelse(!(x %in% c(1:22)), NA, x)
#   x <- ifelse(x == 1, "none",
#               ifelse(x == 2, "less than 500 Taka",
#               ifelse(x == 4, "between 500 and 1000 Taka",
#               ifelse(x == 7, "between 1000 and 2000 Taka",
#               ifelse(x == 8, "between 2000 and 3000 Taka",      
#               ifelse(x == 9, "between 3000 and 5000 Taka",
#               ifelse(x == 10, "between 5000 and 8000 Taka",
#               ifelse(x == 12, "between 8000 and 10000 Taka",
#               ifelse(x == 13, "between 10000 and 15000 Taka",
#               ifelse(x == 14, "between 15000 and 20000 Taka",
#               ifelse(x == 15, "between 20000 and 25000 Taka",
#               ifelse(x == 16, "between 25000 and 30000 Taka",
#               ifelse(x == 17, "between 30000 and 35000 Taka",
#               ifelse(x == 19, "between 35000 and 40000 Taka", 
#               ifelse(x == 20, "between 40000 and 45000 Taka",
#               ifelse(x == 21, "between 45000 and 50000 Taka",              
#               ifelse(x == 22, "more than 50000", NA)))))))))))))))))
#   x <- factor(x, levels=c("none", "less than 500 Taka", "between 500 and 1000 Taka", 
#                           "between 1000 and 2000 Taka", "between 2000 and 3000 Taka",
#                           "between 3000 and 5000 Taka", "between 5000 and 8000 Taka",
#                           "between 8000 and 10000 Taka", "between 10000 and 15000 Taka",
#                           "between 15000 and 20000 Taka", "between 20000 and 25000 Taka", 
#                           "between 25000 and 30000 Taka", "between 30000 and 35000 Taka", 
#                           "between 35000 and 40000 Taka", "between 40000 and 45000 Taka", 
#                           "between 45000 and 50000 Taka", "more than 50000"))
#   
# }
# 
