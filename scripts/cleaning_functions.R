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


