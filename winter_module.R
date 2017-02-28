##R plot of consumption versus number of bees
png(filename="C:/git/winter_module/Image/pollenconsumption.png",width=10, height=6, units="in",res=250)
pollent=seq(from = 0, to = 50000, by = 5000)
Nbeest=seq(from = 0, to = 50000, by = 5000)
Pollent1=pollent-0.002*Nbeest
plot(Nbeest,Pollent1,xlab="Number of bees", ylab="Consumption [g]")
dev.off()

##R plot of metabolism versus temperature with a couple curves for different hive sizes
png(filename="C:/git/winter_module/Image/metabolism versus temperature.png",width=10, height=6, units="in",res=250)
BW= seq(from = 0, to = 1200, by = 5)
vo2at2=22.69*BW^-0.48
vo2at15=4.23*BW^-0.27
plot(BW,vo2at2,type='l',col='green',xlab="Mass(g)", ylab="Metabolism [mL oxygen per g of bees per hour]")
lines(BW,vo2at15,col='red')
legend(1000, 3, legend=c("At 2oC", "At 15oC"),col=c("green", "red"),lty=1:1, cex=0.8,box.lty=0)
dev.off

##R plot of oxygen consumption versus temperature with a couple curves for different hive sizes
png(filename="C:/git/winter_module/Image/metabolism versus hive sizes.png",width=10, height=6, units="in",res=250)
Nbees=seq(from = 0, to = 9375, by = 5)
vo2totat2=(22.69*(0.128*Nbees)^-0.48)*24*(Nbees*0.128)
vo2totat15=(4.23*(0.128*Nbees)^-0.27)*24*(Nbees*0.128)
plot(Nbees,vo2totat2,type='l',col='green',xlab="Number of bees", ylab="Metabolism [mL oxygen per g of bees per hour]")
lines(Nbees,vo2totat15,col='red')
legend(8000, 2500, legend=c("At 2oC", "At 15oC"),col=c("green", "red"),lty=1:1, cex=0.8,box.lty=0)
dev.off

##R plot of oxygen mass versus temperature with a couple curves for different hive sizes
png(filename="C:/git/winter_module/Image/oxygen mass versus hive sizes.png",width=10, height=6, units="in",res=250)
Nbees=seq(from = 0, to = 9375, by = 5)
Mo2at2=0.09961*Nbees*(0.128*Nbees)^-0.48
Mo2at15=0.01730*Nbees*(0.128*Nbees)^-0.27
plot(Nbees,Mo2at2,type='l',col='green',xlab="Number of bees", ylab="Mass of oxygen[g]")
lines(Nbees,Mo2at15,col='red')
legend(8000, 5, legend=c("At 2oC", "At 15oC"),col=c("green", "red"),lty=1:1, cex=0.8,box.lty=0)
dev.off



##R plot of nector equivalents versus temperature with a couple curves for different hive sizes
png(filename="C:/git/winter_module/Image/nectar consumption versus hive sizes.png",width=10, height=6, units="in",res=250)
Nbees=seq(from = 0, to = 9375, by = 5)
Mnectarat2=0.3121*Nbees*(0.128*Nbees)^-0.48
Mnectarat15=0.05419*Nbees*(0.128*Nbees)^-0.27
plot(Nbees,Mnectarat2,type='l',col='green',xlab="Number of bees", ylab="Nectar Consumption [g per day]")
lines(Nbees,Mnectarat15,col='red')
legend(8000, 15, legend=c("At 2oC", "At 15oC"),col=c("green", "red"),lty=1:1, cex=0.8,box.lty=0)
dev.off

