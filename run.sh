 dataset <-read.csv(file='src/censustract-00-10.csv')
 task1<-aggregate(dataset$POP00, by=list(trackName=dataset$CBSA_T), FUN=length)
> task2<-aggregate(dataset$POP00, by=list(trackName=dataset$CBSA_T), FUN=sum)
> task3<-aggregate(dataset$POP10, by=list(trackName=dataset$CBSA_T), FUN=sum)
