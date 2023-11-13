#################################################################
### Besrkivning: Läser information om svarande och urvalet
### Skapad av:Martin Odencrants
### Inparameterar:
### Beroenden:
### Ändrad:
###
### 
### 
### 
###
#################################################################

source("utils.r")

#Micro - Collection Units

inCollectionUnits<-read.csv(file ="incollectionunits2023M06.csv")

#Säkerställ unika venr.
inCollectionUnits$ett<-1

CollectionUnits <- inCollectionUnits %>%
   group_by(VeNr) %>%
   mutate(Counter = cumsum(ett)) %>%
   ungroup()

CollectionUnits<-filter(CollectionUnits,Counter==1)

write.csv(CollectionUnits, file = "CollectionUnits.csv", row.names = FALSE)


#Micro - Reported
inReported<-read.csv(file ="inreported2023M06.csv")
filtered_inReported <- inReported[inReported$ReferencePeriod == i | inReported$ReferencePeriod == previous_year_month, ]

filtered_inReported$ett<-1

In_Reported_sorted <- filtered_inReported %>%
   arrange(CollectionUnitKey, ReferencePeriod, TypeClassKey, desc(SampleOccasion)) %>%
   group_by(CollectionUnitKey, ReferencePeriod, TypeClassKey) %>%
   mutate(Counter = cumsum(ett)) %>%
   ungroup()

In_Reported<-filter(In_Reported_sorted,Counter==1)


#In_Reported_sorted <- filtered_inReported %>%
#  arrange(CollectionUnitKey, ReferencePeriod, TypeClassKey, desc(SampleOccasion))
#  group_by(CollectionUnitKey, ReferencePeriod, TypeClassKey, SampleOccasion) %>%
#  mutate(Counter = cumsum(ett)) %>%
#   ungroup()


write.csv(In_Reported, file = "inReported.csv", row.names = FALSE)


