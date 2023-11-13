#################################################################
### Besrkivning: Skapar imputeringsunderlag
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
Reported_tmp05<-read.csv(file ="Reported_tmp05.csv")

Reported_tmp05 <- Reported_tmp05 %>%
  arrange(Idnr, Variabel)

Rest_rep <- Reported_tmp05 %>%
  distinct(Idnr, Variabel, .keep_all = TRUE)

CollectionUnits<-read.csv(file ="CollectionUnits.csv")

CollectionUnits <- CollectionUnits %>%
  arrange(Idnr)

Rest_cu <- CollectionUnits %>%
  distinct(Idnr, .keep_all = TRUE)

#transponera reported
unique_ids <- as.matrix(Rest_rep$Idnr)

test<-as.data.frame(unique_ids)


for(i in 1:nrow(unique_ids)){ 
   
  subset_data <- Reported_tmp05[Reported_tmp05$Idnr == test$V1[i] , ]
   
   for(j in 1:nrow(subset_data)){
     
      if(subset_data$variabel[j]=="v116m1_t"){
          test$v116m1_t[i]<-subset_data$MeasureValue[j]
        }
       if(subset_data$variabel[j]=="v116m1_t1"){
          test$v116m1_t1[i]<-subset_data$MeasureValue[j]
        }
     }
}

colnames(test)[colnames(test) == "V1"] <- "Idnr"



#bearbeta collection units


df <- CollectionUnits %>%
  mutate(  
        idnr_cu = Idnr,
        Sgrupp = substring(Stratum, 9, 9),
        stratsgr = case_when(
        Sgrupp %in% c("1", "2") ~ paste0(substr(Stratum, 1, 5), '1'),
         Sgrupp %in% c("3", "4") ~ paste0(substr(Stratum, 1, 5), '2'),
        TRUE ~ paste0(substr(Stratum, 1, 5), '3')  
        ),
        AuxAr = AnnualTurnoverTotal / 12,
        AuxArHemma = AnnualTurnoverDomestic / 12,
        branschgr = substr(Stratum, 1, 5),
        stratbgr = paste0(substr(Stratum, 1, 3), '00', Sgrupp),
        stratbgr2 = paste0(substr(Stratum, 1, 2), '00', Sgrupp),
 )

df <- df %>%
   select(
      Idnr,
       idnr_cu,
      IndustryCode,
      CollectionSurveyKey,
      CUStatusCode,
      ScbId,
      Stratum,
      Sgrupp,
      AuxAr,
      AuxArHemma,
       branschgr,
       stratbgr,
       stratbgr2
   )

result_df <- left_join(df, test, by = "Idnr")

write.csv(result_df, file = "Basedata.csv", row.names = FALSE)
