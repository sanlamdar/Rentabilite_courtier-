library(tidyr)
library(readr)
library(readxl)
library(dplyr)
library(stringr)
library(janitor)
library(openxlsx)

TABLL <- read.csv2("C:/Users/komla.dzidzinyo/Desktop/SANLAM/2022/RENT_CLI.txt",sep = "|",quote = "")
TABLL$NOM_ASSU <- str_trim(TABLL$NOM_ASSU,side = "both")

Rent_Cli <- subset(TABLL,str_detect(TABLL$NOM_ASSU,"JHPIEGO|ONG Jhpiego"))

write.xlsx(Rent_Cli,"C:/Users/komla.dzidzinyo/Desktop/SANLAM/2022/RENTABILITE_CLIENT_JHPIEGO.xlsx")

dat1 <- data.frame(anko=c(12,353,875),dkel=c("skkz","sizi","diei"))

dat2 <- data.frame(anko=c(12,353,875),dkel=c(as.Date("21/10/2022","%d/%m/%Y"),as.Date("12/12/2023","%d/%m/%Y"),as.Date("05/08/2021","%d/%m/%Y")))


jumo <- plyr::rbind.fill(dat2,dat1)

jumo <- dplyr::bind_rows(dat2,dat1)

N1 <- c("Sci Business Center","Sci Business Center", "ABIDJAN BUSINESS CENTER-CIV SARL", "LOGISTICS BUSINESS CENTER SARL.U", "LOGISTICS BUSINESS CENTER SARL","PLEIN CIEL BUSINESS CENTER","BAZONA BUSINESS CENTER")

N2 <- c("BICIBAIL/PROSUMA","Prosuma","Oenophile - Prosuma","LARROQUE MARC P/C PROSUMA","BIAO PC PROSUMA P/C CABINET KOUAMELAN","NSIA BANQUE P/C PROSUMA","BICICI PC PROSUMA", "BICIBAIL P/C PROSUMA","PROSUMA",
        "MENSAH RAFAEL S/C PROSUMA","LOXEA P/C PROSUMA / BERNOD RICARD","PROSUMA ENTREPOT P/C OUATTARA ISSA","LOXEA P/C  PROSUMA P/C PERNOD RICARD", "PERSONNEL PROSUMA", "Prosuma P/C KROU ETTIEN JEAN", 
        "BIAO-CI P/C PROSUMA", "BICICI P/C PROSUMA")

N3 <- c("BICICI P/C N-S2PO")

N2 <- c()

N2 <- c()

N2 <- c()

N2 <- c()