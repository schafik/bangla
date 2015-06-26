#cleaning functions#

consump_bins <- function(x) {
  x <- ifelse(!(x %in% c(1:22)), NA, x)
  x <- ifelse(x == 1, "none",
       ifelse(x == 2, "less than 500 Taka",
       ifelse(x == 4, "between 500 and 1000 Taka",
       ifelse(x == 7, "between 1000 and 2000 Taka",
       ifelse(x == 8, "between 2000 and 3000 Taka",      
       ifelse(x == 9, "between 3000 and 5000 Taka",
       ifelse(x == 10, "between 5000 and 8000 Taka",
       ifelse(x == 12, "between 8000 and 10000 Taka",
       ifelse(x == 13, "between 10000 and 15000 Taka",
       ifelse(x == 14, "between 15000 and 20000 Taka",
       ifelse(x == 15, "between 20000 and 25000 Taka",
       ifelse(x == 16, "between 25000 and 30000 Taka",
       ifelse(x == 17, "between 30000 and 35000 Taka",
       ifelse(x == 19, "between 35000 and 40000 Taka", 
       ifelse(x == 20, "between 40000 and 45000 Taka",
       ifelse(x == 21, "between 45000 and 50000 Taka",              
       ifelse(x == 22, "more than 50000", NA)))))))))))))))))
  x <- factor(x, levels=c("none", "less than 500 Taka", "between 500 and 1000 Taka", 
                          "between 1000 and 2000 Taka", "between 2000 and 3000 Taka",
                          "between 3000 and 5000 Taka", "between 5000 and 8000 Taka",
                          "between 8000 and 10000 Taka", "between 10000 and 15000 Taka",
                          "between 15000 and 20000 Taka", "between 20000 and 25000 Taka", 
                          "between 25000 and 30000 Taka", "between 30000 and 35000 Taka", 
                          "between 35000 and 40000 Taka", "between 40000 and 45000 Taka", 
                          "between 45000 and 50000 Taka", "more than 50000"))

}


rent_bins <- function(x) {
  x <- ifelse(!(x %in% c(1:8)), NA, x)
  x <- ifelse(x == 1, "less than 2000 Taka/month",
       ifelse(x == 2, "between 2000 and 2500 Taka/month",
       ifelse(x == 3, "between 2500 and 3000 Taka/month",
       ifelse(x == 4, "between 3000 and 3500 Taka/month",
       ifelse(x == 5, "between 3500 and 4000 Taka/month",      
       ifelse(x == 6, "between 4000 and 4500 Taka/month",      
       ifelse(x == 7, "between 4500 and 5000 Taka/month",      
       ifelse(x == 8, "more than or equal to 5000 Taka/month", NA))))))))
  x <- factor(x, levels=c("less than 2000 Taka/month", "between 2000 and 2500 Taka/month",
                          "between 2500 and 3000 Taka/month", "between 3000 and 3500 Taka/month",
                          "between 3500 and 4000 Taka/month", "between 4000 and 4500 Taka/month",
                          "between 4500 and 5000 Taka/month", "more than or equal to 5000 Taka/month"))
}

consump_priority <- function(x) {
  x <- ifelse(!(x %in% c(1:18)), NA, x)
  x <- ifelse(x == 1, "Education related costs", 
       ifelse(x == 2, "Health related costs",
       ifelse(x == 3, "Rent",
       ifelse(x == 4, "Food or Bills such as gas, electricity, water",
       ifelse(x == 5, "Enjoyment and personal expenditures",
       ifelse(x == 6, "Clothes, shoes, jewelery",
       ifelse(x == 7, "Household assets (fan, refrigerator, mattress,furniture)",
       ifelse(x == 8, "Vehicle purchase, maintenance and repair",
       ifelse(x == 9, "Home construction, improvement, renovation",
       ifelse(x == 10, "Investment to make money",
       ifelse(x == 11, "Investment to buy land or house",
       ifelse(x == 12, "Pay off loan or settle debt",
       ifelse(x == 13, "Gifts for another person or organization",
       ifelse(x == 14, "Weddings, funerals, religious functions",
       ifelse(x == 15, "Saving for emergencies",
       ifelse(x == 16, "Saving for an investment in physical assets or education",
       ifelse(x == 17, "None",
       ifelse(x == 18, "Other", NA))))))))))))))))))
  x <- factor(x, levels=c("Education related costs", "Health related costs", "Rent", "Food or Bills such as gas, electricity, water",
                          "Enjoyment and personal expenditures", "Clothes, shoes, jewelery", 
                          "Household assets (fan, refrigerator, mattress,furniture)", "Vehicle purchase, maintenance and repair", 
                          "Home construction, improvement, renovation", "Investment to make money",
                          "Investment to buy land or house", "Pay off loan or settle debt", 
                          "Gifts for another person or organization", "Weddings, funerals, religious functions",
                          "Saving for emergencies", "Saving for an investment in physical assets or education", "None", "Other"))
}


account_bins <- function(x) {
  x <- ifelse(!(x %in% c(1:13)), NA, x)
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
  x <- factor(x, levels=c("BANK ACCOUNTS - CURRENT", "BANK ACCOUNTS - SAVINGS",
                "DPS ACCOUNTS", "OTHER FIXED DEPOSIT ACCOUNTS", "INSURANCE SAVING PRODUCTS",
                "ISLAMIC BANK ACCOUNTS - CURRENT", "ISLAMIC ACCOUNTS - SAVINGS",
                "ISLAMIC FIXED DEPOSIT ACCOUNTS", "ISLAMIC INSURANCE SAVINGS PRODUCTS",
                "MOBILE ACCOUNTS", "POST OFFICE ACCOUNTS", "ACCOUNTS AT A MICROFINANCE INSTITUTION",
                "OTHER TYPE OF FORMAL ACCOUNTS", "None of the above"))

}