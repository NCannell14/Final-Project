###importing libraries
library(tidyverse)  #for plots
library(readr) #for reading csv files
###Importing data sets
  #assigning data types
adultdata <- read_csv("C:/Users/ngcco/OneDrive/Desktop/analytics final proj/cdph_ssi_adult_odp_2021.csv", 
      na = "empty", col_types = cols(
  County = col_factor(levels = c("Alameda","Amador", "Butte", "Calaveras", 
      "Contra Costa","Del Norte", "El Dorado", "Fresno", "Humboldt", 
      "Imperial", "Inyo", "Kern", "Kings", "Lake", "Lassen", "Los Angeles", 
      "Marin", "Mendocino", "Merced", "Mono","Monterey", "Napa", 
      "Nevada", "Orange","Placer", "Plumas", "Riverside", "Sacramento", 
      "San Benito", "San Bernardino", "San Diego", "San Francisco", 
      "San Joaquin","San Luis Obispo", "San Mateo", "Santa Barbara", 
      "Santa Clara", "Santa Cruz", "Shasta", "Siskiyou", "Solano", 
      "Sonoma", "Stanislaus","Sutter", "Tehama", "Tulare", "Tuolumne", 
      "Ventura", "Yolo", "Yuba")), 
  Operative_Procedure = col_factor(levels = c("Abdominal aortic aneurysm repair", 
      "All procedures", "Appendix surgery","Bile duct,liver or pancreatic surgery", 
      "Cardiac surgery", "Cesarean section", "Colon surgery", "Coronary 
      bypass,chest and donor incisions", "Coronary bypass,chest incision only", 
      "Exploratory abdominal surgery (laparotomy)", "Gallbladder sugery", 
      "Gastric surgery", "Heart transplant", "Hip prosthesis", "Hysterectomy
      , abdominal", "Hysterectomy, vaginal", "Kidney surgery", 
      "Kidney transplant", "Knee prosthesis", "Laminetomy", "Liver transplant", 
      "Open reduction of fracture","Ovarian surgery", "Pacemaker surgery", 
      "Rectal surgery", "Small bowel surgery","Spinal fusion", "Spleen surgery", 
      "Thoracic surgery", "STATE OF CALIFORNIA POOLED DATA",
      "STATE OF CALIFORNIA POOLED DATA - Abdominal aortic aneurysm repair",
      "STATE OF CALIFORNIA POOLED DATA - Appendix surgery",
      "STATE OF CALIFORNIA POOLED DATA - Bile duct, liver or pancreatic surgery",
      "STATE OF CALIFORNIA POOLED DATA - Cardiac surgery",
      "STATE OF CALIFORNIA POOLED DATA - Cesarean section",
      "STATE OF CALIFORNIA POOLED DATA - Colon surgery",
      "STATE OF CALIFORNIA POOLED DATA - Coronary bypass, chest and donor incisions",
      "STATE OF CALIFORNIA POOLED DATA - Coronary bypass, chest incision only",
      "STATE OF CALIFORNIA POOLED DATA - Exploratory abdominal surgery (laparotomy)",
      "STATE OF CALIFORNIA POOLED DATA - Gallbladder surgery",
      "STATE OF CALIFORNIA POOLED DATA - Gastric surgery",
      "STATE OF CALIFORNIA POOLED DATA - Heart transplant",
      "STATE OF CALIFORNIA POOLED DATA - Hip prosthesis",
      "STATE OF CALIFORNIA POOLED DATA - Hysterectomy, abdominal",
      "STATE OF CALIFORNIA POOLED DATA - Hysterectomy, vaginal",
      "STATE OF CALIFORNIA POOLED DATA - Kidney surgery",
      "STATE OF CALIFORNIA POOLED DATA - Kidney transplant",
      "STATE OF CALIFORNIA POOLED DATA - Knee prosthesis",
      "STATE OF CALIFORNIA POOLED DATA - Laminectomy",
      "STATE OF CALIFORNIA POOLED DATA - Liver transplant",
      "STATE OF CALIFORNIA POOLED DATA - Open reduction of fracture",
      "STATE OF CALIFORNIA POOLED DATA - Ovarian surgery",
      "STATE OF CALIFORNIA POOLED DATA - Pacemaker surgery",
      "STATE OF CALIFORNIA POOLED DATA - Rectal surgery",
      "STATE OF CALIFORNIA POOLED DATA - Small bowel surgery",
      "STATE OF CALIFORNIA POOLED DATA - Spinal fusion",
      "STATE OF CALIFORNIA POOLED DATA - Spleen surgery",
      "STATE OF CALIFORNIA POOLED DATA - Thoracic surgery")), 
  Facility_ID = col_number(), 
  Hospital_Category_RiskAdjustment = col_factor(levels = c(
    "Acute Care Hospital", "Critical Access Hospital")), 
  Facility_Type = col_factor(levels = c("Major Teaching", 
    "Pediatric", "Community, >250 Beds", "Community, 125-250 Beds", 
    "Community, <125 Beds", "Critical Access")), 
  Procedure_Count = col_number(), 
  Infections_Reported = col_number(), 
  Infections_Predicted = col_number(), 
  SIR = col_number(), 
  SIR_CI_95_Lower_Limit = col_number(), 
  SIR_CI_95_Upper_Limit = col_number(), 
  Comparison = col_factor(levels = c("Better", "Same", "Worse")), 
  Met_2020_Goal = col_factor(levels = c("Yes", "No")), 
  SIR_2015 = col_number()))

#importing pediatric data
peddata <- read_csv("C:/Users/ngcco/OneDrive/Desktop/analytics final proj/cdph_ssi_peds_odp_2021.csv",
  na = "empty", col_types = cols(
  County = col_factor(levels = c("Alameda","Amador", "Butte", "Calaveras", 
    "Contra Costa","Del Norte", "El Dorado", "Fresno", "Humboldt", 
    "Imperial", "Inyo", "Kern", "Kings", "Lake", "Lassen", "Los Angeles", 
    "Marin", "Mendocino", "Merced", "Mono","Monterey", "Napa", 
     "Nevada", "Orange","Placer", "Plumas", "Riverside", "Sacramento", 
     "San Benito", "San Bernardino", "San Diego", "San Francisco", 
     "San Joaquin","San Luis Obispo", "San Mateo", "Santa Barbara", 
      "Santa Clara", "Santa Cruz", "Shasta", "Siskiyou", "Solano", 
      "Sonoma", "Stanislaus","Sutter", "Tehama", "Tulare", "Tuolumne", 
      "Ventura", "Yolo", "Yuba")), 
  Operative_Procedure = col_factor(levels = c("Abdominal aortic aneurysm repair", 
      "All procedures", "Appendix surgery","Bile duct,liver or pancreatic surgery", 
     "Cardiac surgery", "Cesarean section", "Colon surgery", "Coronary 
      bypass,chest and donor incisions", "Coronary bypass,chest incision only", 
      "Exploratory abdominal surgery (laparotomy)", "Gallbladder sugery", 
      "Gastric surgery", "Heart transplant", "Hip prosthesis", "Hysterectomy
      , abdominal", "Hysterectomy, vaginal", "Kidney surgery", 
      "Kidney transplant", "Knee prosthesis", "Laminetomy", "Liver transplant", 
       "Open reduction of fracture","Ovarian surgery", "Pacemaker surgery", 
      "Rectal surgery", "Small bowel surgery","Spinal fusion", "Spleen surgery", 
      "Thoracic surgery","STATE OF CALIFORNIA POOLED DATA",
     "STATE OF CALIFORNIA POOLED DATA - Appendix surgery",
     "STATE OF CALIFORNIA POOLED DATA - Bile duct, liver or pancreatic surgery",
     "STATE OF CALIFORNIA POOLED DATA - Cardiac surgery",
     "STATE OF CALIFORNIA POOLED DATA - Cesarean section",
     "STATE OF CALIFORNIA POOLED DATA - Colon surgery",
     "STATE OF CALIFORNIA POOLED DATA - Exploratory abdominal surgery (laparotomy)",
     "STATE OF CALIFORNIA POOLED DATA - Gallbladder surgery",
     "STATE OF CALIFORNIA POOLED DATA - Hip prosthesis",
     "STATE OF CALIFORNIA POOLED DATA - Hysterectomy, abdominal",
     "STATE OF CALIFORNIA POOLED DATA - Kidney transplant",
     "STATE OF CALIFORNIA POOLED DATA - Knee prosthesis",
     "STATE OF CALIFORNIA POOLED DATA - Laminectomy",
     "STATE OF CALIFORNIA POOLED DATA - Liver transplant",
     "STATE OF CALIFORNIA POOLED DATA - Rectal surgery",
     "STATE OF CALIFORNIA POOLED DATA - Small bowel surgery",
     "STATE OF CALIFORNIA POOLED DATA - Spinal fusion",
     "STATE OF CALIFORNIA POOLED DATA - Thoracic surgery")), 
  Facility_ID = col_number(), 
  Hospital_Category_RiskAdjustment = col_factor(levels = c(
      "Acute Care Hospital", "Critical Access Hospital")), 
  Facility_Type = col_factor(levels = c("Major Teaching", 
       "Pediatric", "Community, >250 Beds", "Community, 125-250 Beds", 
       "Community, <125 Beds", "Critical Access")), 
  Procedure_Count = col_number(), 
  Infections_Reported = col_number(), 
  Infections_Predicted = col_number(), 
  SIR = col_number(), 
  SIR_CI_95_Lower_Limit = col_number(), 
  SIR_CI_95_Upper_Limit = col_number(), 
  Comparison = col_factor(levels = c("Better", "Same", "Worse")), 
  Met_2020_Goal = col_factor(levels = c("Yes", "No")), 
  SIR_2015 = col_number()))

######Figure 1: Comparison of actual infections vs predicted infections
#taking all adult county data
adultdata1 <- adultdata[complete.cases(adultdata$County),]
#dot plot
ggplot(data = adultdata1) +
  geom_point(mapping = aes(x = Infections_Reported, 
                           y = Infections_Predicted), size = 0.5) +
  labs(title = "Adult Infection Prediction Accuracy", 
  x = "Actual Infections", y = "Predicted Infections")
#taking all pediatric county data
peddata1 <- peddata[complete.cases(peddata$County),]
#dot plot
ggplot(data = peddata1) +
  geom_point(mapping = aes(x = Infections_Reported,
                          y = Infections_Predicted), size = 0.5) +
  labs(title = "Pediatric Infection Prediction Accuracy",
       x = "Actual Infections", y = "Predicted Infections")

######Figure 2: Map of California with Infections by County- this currently plots
#importing libraries to make map
library(ggplot2)
library(ggmap)
library(maps)
library(mapdata)
library(dplyr)
#taking only adult county data
adultdata2 <- adultdata[complete.cases(adultdata$County),]
#calculating infection rate
adultdata4 <- adultdata2 %>% group_by(County) %>% summarise(
  Procedures = sum(Procedure_Count),
  Infections = sum(Infections_Reported),
  Infection_Rate = sum(Infections_Reported) / sum(Procedure_Count)
) %>% rowwise() %>% mutate(subregion = tolower(County))
#making map of CA by county
states <- map_data("state")
dim(states)
ca_df <- subset(states, region == "california")
counties <- map_data("county")
ca_county <- inner_join(subset(counties, region == "california"), adultdata4, by = "subregion")
ca_base <- ggplot(data = ca_df, mapping = aes(x = long, y = lat, group = group)) + 
  coord_fixed(1.3) + 
  geom_polygon(color = "black", fill = "gray")
ca_base + 
  geom_polygon(data = ca_county, mapping = aes(fill = Infection_Rate), color = "black") +
  geom_polygon(color = "black", fill = NA) +
  theme(
    axis.title = element_blank(),
    axis.text=element_blank(),
    axis.ticks=element_blank()
  ) +
  scale_fill_continuous(trans = 'reverse') +
  labs(fill = "Infection Rate")

######Figure 3: Infections by Procedure- divided adult and pediatric
#adult data- only data from entire state
adultdata3 <- (head(adultdata, 29))
#calculating infection rate
a = (adultdata3$Infections_Reported/
  adultdata3$Procedure_Count)
#bar graph
ggplot(data=adultdata3, aes(x= reorder(Operative_Procedure, -a), y=a)) +
  geom_bar(stat="identity", fill="steelblue") +
  coord_flip() + labs(title = "Adult Infection Rate by Procedure",
      x = "Procedure", y = "Infection Rate")
#pediatric data- only data from entire state
peddata3 <- (head(peddata, 19))
#calculating infection rate
b = (peddata3$Infections_Reported/
  peddata3$Procedure_Count)
#bar graph
ggplot(data=peddata3, aes(x= reorder(Operative_Procedure, -b), y=b)) +
  geom_bar(stat="identity", fill="dark green") +
  coord_flip() + labs(title = "Pediatric Infection Rate by Procedure",
        x = "Procedure", y = "Infection Rate")

######Figure 4: Facility Type vs Infection Rate
#adult data
#calculating infection rate
c = adultdata2$Infections_Reported /
  adultdata2$Procedure_Count
#bar graph
ggplot(data=adultdata2, aes(x=Facility_Type, y=c)) +
  geom_bar(stat="identity", fill= "red") +
  coord_flip() + labs(title = "Adult Infection Rate by Facility Type", 
      x = "Facility Type", y = "Infection Rate")
#pediatric data
peddata2 <- peddata[complete.cases(peddata$County),]
#calculating infection rate
c = peddata2$Infections_Reported /
  peddata2$Procedure_Count
#bar graph
ggplot(data=peddata2, aes(x=Facility_Type, y=c)) +
  geom_bar(stat="identity", fill= "yellow") +
  coord_flip() + labs(title = "Pediatric Infection Rate by Facility Type", 
        x = "Facility Type", y = "Infection Rate")

######Calculation: Multiple Linear Regression and Relative Importance
library(relaimpo)
#adult data
#infection rate calculation
adultinfection_rate = (adultdata1$Infections_Reported /
                    adultdata1$Procedure_Count)
#multiple linear regression
fit <- lm(adultinfection_rate ~ County + Operative_Procedure + Facility_Type + 
            Infections_Predicted + Met_2020_Goal, 
          data=adultdata1)
#relative importance calculations
calc.relimp(fit)

#pediatric data
#infection rate calculation
pedinfection_rate = (peddata1$Infections_Reported /
                    peddata1$Procedure_Count)
#multiple linear regression
fit <- lm(pedinfection_rate ~ County + Operative_Procedure + Facility_Type + 
            Infections_Predicted + Met_2020_Goal, 
          data=peddata1)
#relative importance calculations
calc.relimp(fit)

######Figure 5: Acute Care Hospital vs Critical Access Hospital- 
  #which has better infection rate predictions?
#SIR Explained:
#If the SIR is 1; then actual infections = predicted infections
#If the SIR is <1: then actual infections < predicted infections
#If the SIR is >1: then actual infections > predicted infections
#adult data version
ggplot(data = adultdata1, mapping = 
         aes(x = SIR, fill = Hospital_Category_RiskAdjustment)) +
        labs(x = "Adult Standardized Infection Ratio", y = "Frequency", 
             fill = "Hospital Type") +
  geom_histogram(position = 'dodge', binwidth = 0.5)
#pediatric data version
ggplot(data = peddata1, mapping = 
         aes(x = SIR, fill = Hospital_Category_RiskAdjustment)) +
  labs(x = "Pediatric Standardized Infection Ratio", y = "Frequency", 
       fill = "Hospital Type") +
  geom_histogram(position = 'dodge', binwidth = 0.5)

######Bonus Round: Regression Tree 
  #using 3 best indicators from relative importance calculations
library(rpart)
library(rpart.plot)
set.seed(465)
#pediatric tree 1 
tree <- rpart(pedinfection_rate ~ Met_2020_Goal + County + Operative_Procedure,
              data=peddata1, 
              control=rpart.control(cp=.0001))
#plot Tree
prp(tree,faclen=0, #use full names for factor labels
    extra=1, #display number of obs. for each terminal node
    roundint=F, #don't round to integers in output
    digits=5)