#################################################################
### Besrkivning: Identifierar vilka objekt som ska imputeras
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
CollectionUnits<-read.csv(file ="CollectionUnits.csv")

CollectionUnits <- CollectionUnits %>%
  arrange(Idnr)

df <- data.frame()

df <- CollectionUnits %>% 
    mutate(
        Year = substr(referencePeriodStart, 1, 4), 
        Month = substr(referencePeriodStart,6, 8),
        Period_m1 = as.Date(paste0(referencePeriodStart, "01"), format = "%YM%m%d"),
        variabeltyp='v116',
        variabel='v116_m1_t',
        ReferencePeriod=Period_m1,
        Sgr=substr(Stratum,9,9),
        )

df <- df %>% 
    filter(
    Sgr<4,
    )

reported_tmp05<-read.csv(file ="Reported_tmp05.csv")

reported <- reported_tmp05 %>%
    filter(ReferencePeriod=="2023M06")

test <- left_join(
    df,
    reported,
    by=("Idnr"),
    )

test<-test %>% 
    filter(
        is.na(MeasureValue)
        )

write.csv(test, file = "Allrowstoimpute.csv", row.names = FALSE)