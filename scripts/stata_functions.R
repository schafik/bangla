

#writing to stata

prep_for_stata <- function(df) {
for (colname in names(df)) {
  if (is.character(df[[colname]])) {
    df[[colname]] <- as.factor(df[[colname]])}}
return(df)
}
