library(grid)    
library(ggplot2)
library(reshape2)
library(ggthemes)
library(scales)


plot1 <- function(){
  table <- read.csv("table.csv")
  ggplot(aes(y=SampleTimeMS,x=RequestNumber,colour=createTimeF),data=table) + geom_line(aes(group=createTimeF),size=0.75,)  + xlim(0,41) + ylim(0,6000) +
    ylab("Sample Time (ms)") + xlab("Request Number") + guides(col=guide_legend(ncol=5)) + ggtitle("All Tests") + scale_color_manual(name = "Test date",values = colours) + guides(fill=guide_legend(title="Request Number")) + theme(legend.position="bottom") 
  
}

plot2 <- function(){
  table <- read.csv("table.csv")
  ggplot(aes(y=confPerHourF,x=createTimeF,colour=createTimeF),data=table) + geom_point(aes(colour = createTimeF)) +
    ylab("Conf/Hour") + xlab("Date of Test") + ggtitle("Conf/Hour per Test") + theme(legend.position="bottom") + guides(col=guide_legend(ncol=5)) + theme(axis.text.x = element_text(angle = 90, hjust = 1)) + scale_colour_hue(name ="Test date")
  
}

plot3 <- function(){
  table <- read.csv("table.csv")
  ggplot(aes(y=confPerHourF,x=usersF,colour=createTimeF),data=table) + geom_point(aes(colour = createTimeF)) +
    ylab("Conf/Hour") + xlab("Num Users") + ggtitle("Conf/Hour per Num of Users (Color by test date)") + theme(legend.position="bottom") + guides(col=guide_legend(ncol=5)) + scale_colour_hue(name ="Test date")
  
}