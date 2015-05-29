
plot_percent <- function(df, var, removeNAs = F, coordflippin = F) {
  if (removeNAs == T){
    yo <- df %>% group_by_(as.name(var)) %>% 
      summarize(tally = n()) #getting totals
    yo <- mutate(yo, percent = round(tally/sum(tally), digits=2))}  
  else if (removeNAs == F){
    yo <- df %>% group_by_(as.name(var)) %>% 
      summarize(tally = n()) #getting totals
    yo <- na.omit(yo) #removing NAs
    yo <- mutate(yo, percent = round(tally/sum(tally), digits=2))}  

  if (coordflippin == F){
  ggplot(data = yo, aes_string(x=var, y = "tally")) + 
    geom_bar(stat="identity", colour = "black", fill = "#F0E442") + ylab("count")+
    geom_text(stat="identity", aes_string(label="percent", vjust=-.25))}
  else if (coordflippin == T){
    ggplot(data = yo, aes_string(x=var, y = "tally")) +
      geom_bar(stat="identity", colour = "black", fill = "#F0E442") + ylab("count") +
      coord_flip() +
      geom_text(stat="identity", aes_string(label="percent", hjust = -.25))}
}



plot_percent2 <- function(df, var1, var2, removeNAs = F, coordflippin = F) {
  if (removeNAs == T){
    yo <- df %>% group_by_(as.name(var1), as.name(var2)) %>% 
      summarize(tally = n()) #getting totals
    yo <- mutate(yo, percent = round(tally/sum(tally), digits=2))}  
  else if (removeNAs == F){
    yo <- df %>% group_by_(as.name(var1), as.name(var2)) %>% 
      summarize(tally = n()) #getting totals
    yo <- na.omit(yo) #removing NAs
    yo <- mutate(yo, percent = round(tally/sum(tally), digits=2))}  
  
  if (coordflippin == F){
    ggplot(data = yo, aes_string(x=var1, y = "tally", fill = var2)) + 
      geom_bar(stat="identity", position=position_dodge()) + ylab("count")}
  
  else if (coordflippin == T){
    ggplot(data = yo, aes_string(x=var1, y = "tally", fill = var2)) + 
      geom_bar(stat="identity", position=position_dodge()) + ylab("count")+ coord_flip()}
}

