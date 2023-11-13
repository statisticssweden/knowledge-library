#################################################################
### Besrkivning: Medelvärdesimputering av imputeringsunderlag
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

a_remains_to_impute<-read.csv(file ="Allrowstoimpute.csv")

Basedata<-read.csv(file ="Basedata.csv")

Basedata$currdataexcl <- ifelse(is.na(Basedata$v116m1_t1) | is.na(Basedata$v116m1_t), "E", "")

underlag <- Basedata %>% 
    filter(Basedata$currdataexcl=='')

result <- underlag %>%
  group_by(Stratum) %>%
  summarize(MeanValue = mean(v116m1_t))

imputed <- a_remains_to_impute %>%
    select(
    Idnr,
    Stratum,
    )

df<-left_join(imputed, result, by = "Stratum")

df <- df %>%
  rename(MeasureValue = MeanValue)

df$Variable<-"v116"

df<-df %>%
   select(
       Idnr,
       MeasureValue,
       Variable
       )

write.csv(df, file = "imputed.csv", row.names = FALSE)

file.remove("Reported_tmp01.csv")
file.remove("Reported_tmp03.csv")
file.remove("Reported_tmp05.csv")
file.remove("Allrowstoimpute.csv")
file.remove("Basedata.csv")
file.remove("CollectionUnits.csv")
file.remove("inReported.csv")
