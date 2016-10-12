#base boxplot example
boxplot(conc ~ species + time, main = "Atrazine+D", xlab = "Dehydration Time (hrs)", 
        ylab="Concentration", col=c("lightblue", "red"))

#ggplot2 clustered boxplot example
p <- ggplot(mtcars, aes(factor(cyl), mpg))
p + geom_boxplot(aes(fill = factor(vs)))

#jpeg as default method since journals like it
jpeg(paste(frogsoildir,"rvm2016_fig1.jpg", sep=""),width = 6, height = 4, units = "in",res=300)
  #plotting commands
dev.off()