#################################################################
### Besrkivning:
### Skapad av:
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

impRatio <- function(df){
    yt<- sum(df$v116m1_t)
    yt1<- sum(df$v116m1_t1)
    return(list(yt,yt1))
}

currRatio<-impRatio(underlag)

imputed<-a_remains_to_impute