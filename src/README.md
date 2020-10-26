This is the directory where your souce code would reside

dataset <-read.csv(file='src/censustract-00-10.csv')
dataset ("censustrack-00-10.csv")


#1total number of census tracts in each core based statistical area

task1<-aggregate(dataset$POP00, by=list(trackName=dataset$CBSA_T), FUN=length)

#2total population in 2000/ not working yet

task2<-aggregate(dataset$POP00, by=list(trackName=dataset$CBSA_T), FUN=sum)

#3 totalpopulation in 2010/ npot working yet 

task3<-aggregate(dataset$POP10, by=list(trackName=dataset$CBSA_T), FUN=sum)

#4 average population % change = not working yet
task4<-aggregate(as.numeric(dataset$PPCHG), by=list(trackName=dataset$CBSA_T), FUN=mean(na.rm = TRUE))

# Final stage report file

newdf<-data.frame(step1, step2[,2], step3[,2], step4[,2])
names(newdf)<-c("trackname", "total_tracts", "pop00", "pop10") 
 
write.csv(newdf, "report.csv")
