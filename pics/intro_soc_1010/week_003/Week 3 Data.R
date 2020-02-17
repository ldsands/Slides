########################################################
#   File Name:	Week 3 Data Weight.R
#   Date:   	Fall 2017
#   Author: 	Levi D. Sands
#   Purpose:	MIDUS data analysis for Thesis Project
#   File Location:
#       cd "C:/Users/ldsan/Box Sync/Computer stuff/Projects/MIDUS/All_Data"
#   Input File:
#       30263-0001-Data.dta
#   Output File:
#       LSAY6120Final.do
#   Required Packages:
#       install.packages("haven") #for importing STATA .dta files
#       install.packages("tidyverse") #various utilities to make stuff easier
#       install.packages("data.table") #for easlily making data tables
#       install.packages("Hmisc") #adds lots of desciptive stats fuctions
########################################################

#Load packages
library(haven)
library(tidyverse)
library(data.table)
library(Hmisc)


# Set the working directory
setwd("C:/Users/ldsan/Box Sync/Computer stuff/Projects/MIDUS/All_Data")

# Add MIDUS 1, 2, and all MIDUS 2 projects data to R
midus1 <- read_dta("MIDUS_1.dta")
midus2 <- read_dta("MIDUS_2.dta")
midus2bio <- read_dta("MIDUS_2_Bio.dta")
test <- merge(midus1, midus2, all.y = TRUE)
bio <- merge(test, midus2bio, all.y = TRUE)
rm(test, midus1, midus2, midus2bio)
bio <- zap_labels(bio)
attach(bio)

# Graph prep stuff
bawtheme <- theme(panel.grid.major = element_blank(),
                  panel.grid.minor = element_blank(),
                  panel.background = element_blank(),
                  axis.line = element_line(color = "black"))
# Variable Prep
age <- as.numeric(B1PAGE_M2)
sex <- if_else(B1PGENDER == 2, 0, if_else(B1PGENDER == 1, 1, NULL))
sex <- as.numeric(sex)
income <- as.numeric(B1STINC1)
parfintrob <- as.numeric(B1SJ7PE)
# Add prepped variables to dataframe for easier management
var <- data.frame(age, sex, income, parfintrob)
rm(age, sex, income, parfintrob)

# Income and Parents Financial Trouble
qplot(var$parfintrob, var$income)
ggplot(var, aes(x=wt, y=mpg)) + geom_point()


# Graph Hip to waist ratio
