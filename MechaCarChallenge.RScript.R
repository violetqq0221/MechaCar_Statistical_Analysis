# part 1
library(dplyr)
mechacar_df <- read.csv(file="MechaCar_mpg.csv",check.names=F,stringsAsFactors=F)
head(mechacar_df)
model = lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance
           + AWD, data=mechacar_df)
summary(model)


# part 2
suspension_df <- read.csv(file="Suspension_Coil.csv",check.names=F,stringsAsFactors=F)
#View(suspension_df)
total_summary = summarize(suspension_df, Mean=mean(PSI), Median=median(PSI), Variance=var(PSI),
                          SD=sd(PSI))
View(total_summary)
lot_summary = suspension_df %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), 
                                                                          Median=median(PSI), 
                                                                          Variance=var(PSI),
                                                                          SD=sd(PSI))

# part 3
t.test(log10(suspension_df$PSI),mu=mean(log10(suspension_df$PSI)))
# against lot1
lot1 <- subset(suspension_df, Manufacturing_Lot == "Lot1")
#View(lot1)
t.test(log10(lot1$PSI),mu=mean(log10(suspension_df$PSI)))
# against lot2
lot2 <- subset(suspension_df, Manufacturing_Lot == "Lot2")
#View(lot2)
t.test(log10(lot2$PSI),mu=mean(log10(suspension_df$PSI)))
# against lot3
lot3 <- subset(suspension_df, Manufacturing_Lot == "Lot3")
#View(lot3)
t.test(log10(lot3$PSI),mu=mean(log10(suspension_df$PSI)))
