#################################################################
### Besrkivning: Skapar variabelnamn till tjänsten från metadata
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

Reported_tmp03<-read.csv(file ="Reported_tmp01.csv")

Reported_tmp03 <- Reported_tmp03 %>%
  mutate(Variabeltyp = case_when(
    TypeClassKey == '5|2|05' ~ 'v146',
    TypeClassKey == '5|2|08' ~ 'v116',
    
  ))

write.csv(Reported_tmp03, file = "Reported_tmp03.csv", row.names = FALSE)