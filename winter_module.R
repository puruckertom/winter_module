png(filename="C:/git/winter_module/Image/pollenconsumption.png",width=10, height=6, units="in",res=250)
pollent=seq(from = 0, to = 50000, by = 5000)
Nbeest=seq(from = 0, to = 50000, by = 5000)
Pollent1=pollent-0.002*Nbeest
plot(Nbeest,Pollent1,xlab="Number of bees", ylab="Consumption [g]")
dev.off()

png(filename="C:/git/winter_module/Image/metabolism versus temperature.png",width=10, height=6, units="in",res=250)
BW= seq(from = 0, to = 1200, by = 100)
vo2at2=22.69*BW^-0.48
vo2at15=4.23*BW^-0.27
plot(BW,vo2at2,type='l',col='green',xlab="Mass(g)", ylab="Metabolism [mL oxygen per g of bees per hour]")
lines(BW,vo2at15,col='red')
legend(1000, 2.5, legend=c("At 2oC", "At 15oC"),col=c("green", "red"),lty=1:1, cex=0.8,box.lty=0)
dev.off
