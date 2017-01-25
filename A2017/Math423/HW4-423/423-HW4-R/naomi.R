filter<-read.csv('http://www.math.mcgill.ca/dstephens/Regression/Data/Assignment4/Filter.csv',header=TRUE)

filter$carsize<-as.factor(filter$carsize)
filter$type<-as.factor(filter$type)
y<-filter$noise
type<-filter$type
carsize<-filter$carsize


