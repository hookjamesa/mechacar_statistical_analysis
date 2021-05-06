library(dplyr) #Import
MechaCarMPG <- read.csv(file='C:/users/hookj/bootcamp/mechacar_statistical_analysis/MechaCar_mpg.csv',check.names=F,stringsAsFactors = F) #CSV Import of MechaCarMPG
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCarMPG) # Generate Linear Model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCarMPG)) # Summary Stats

MechaCarCoil <- read.csv(file='C:/users/hookj/bootcamp/mechacar_statistical_analysis/Suspension_Coil.csv',check.names=F,stringsAsFactors = F) #CSV Import of Suspension Coils
total_summary <- summarize(MechaCarCoil,Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI)) #All lot summary
lot_summary <- MechaCarCoil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI)) #Summary by mfg lot

t.test(MechaCarCoil$PSI,mu=1500) #compare total sample versus standard
t.test(subset(MechaCarCoil$PSI,MechaCarCoil$Manufacturing_Lot=="Lot1"),mu=1500) #compare lot 1 versus standard
t.test(subset(MechaCarCoil$PSI,MechaCarCoil$Manufacturing_Lot=="Lot2"),mu=1500) #compare lot 2 versus standard
t.test(subset(MechaCarCoil$PSI,MechaCarCoil$Manufacturing_Lot=="Lot3"),mu=1500) #compare lot 3 versus standard
