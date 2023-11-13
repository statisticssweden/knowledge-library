#################################################################
### Besrkivning:Skapar Idnr för svarande och hela urvalet
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

#library(dplyr)

inReported<-read.csv(file ="inReported.csv")

Reported_tmp01 <- inReported %>%
  mutate(Idnr = as.character(CollectionUnitKey)) %>%
  mutate(Idnr = substr(Idnr, 1, 12))

write.csv(Reported_tmp01, file = "Reported_tmp01.csv", row.names = FALSE)


CollectionUnits<-read.csv(file ="CollectionUnits.csv")

CollectionUnits <- inCollectionUnits %>%
  mutate(Idnr = as.character(CollectionUnitKey)) %>%
  mutate(Idnr = substr(Idnr, 1, 12))

write.csv(CollectionUnits, file = "CollectionUnits.csv", row.names = FALSE)
