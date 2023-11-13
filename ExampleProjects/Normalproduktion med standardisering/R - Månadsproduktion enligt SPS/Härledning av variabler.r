#################################################################
### Besrkivning: Skapar hjälpvariabler till imputering
### Skapad av: Martin Odencrants
### Inparameterar:
### Beroenden:
### Ändrad:
###
### 
### 
### 
###
#################################################################

Reported_tmp04<-read.csv(file ="Reported_tmp03.csv")

Reported_tmp04 <- Reported_tmp04 %>%
  mutate(MeasureValue = ifelse(MeasureValue < 0, 0, MeasureValue)) %>%
  filter(!is.na(Variabeltyp) & Variabeltyp != ' ')  %>%
 filter((DataSourceParentCode == '5670'))

Reported_tmp05 <- Reported_tmp04 %>%
  mutate(Variabel = '',
         m = '',
         t = '',
         ParamYear = substr(referencePeriodStart, 1, 4), 
         ParamMonth = substr(referencePeriodStart,6, 8),
         ParamPeriodStart = as.numeric(as.Date(paste0(referencePeriodStart, "01"), format = "%YM%m%d")),
         #referensperiod för observation
         refYear = substr(ReferencePeriod, 1, 4), 
         refMonth = substr(referencePeriodStart, 6, 8),
         refPeriodStart = as.numeric(as.Date(paste0(ReferencePeriod, "01"), format = "%YM%m%d")),
         years = interval(as.Date(paste0(ReferencePeriod, "01"), format = "%YM%m%d"),as.Date(paste0(referencePeriodStart, "01"), format = "%YM%m%d")) %/% years(1),
         month =ifelse(years>=0, (interval(as.Date(paste0(ReferencePeriod, "01"), format = "%YM%m%d"),as.Date(paste0(referencePeriodStart, "01"), format = "%YM%m%d")) %/% months(1) %% 12)+1,NA),
         m=ifelse(years>=0 & month==1,gsub(" ", "", paste('m',as.character(month))),NA),
         t = ifelse(years==0,"_t", gsub(" ","",paste('_t',as.character(years))) ),
         variabel = paste0(Variabeltyp,m,t),
         )

write.csv(Reported_tmp05, file = "Reported_tmp05.csv", row.names = FALSE)