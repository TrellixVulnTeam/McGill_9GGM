setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

testScores = read.csv("TestScores.csv",header=TRUE)
testScores$Faculty = as.factor(testScores$Faculty)
yT = testScores$Score
faculty = testScores$Faculty

fit.yT = lm(yT ~ faculty)
boxplot(residuals(fit.yT)~faculty,pch=19,cex=0.8,vertical = TRUE, col = c('red','blue','green'))
anova(fit.yT)

filter = read.csv("Filter.csv")
filter$carsize = as.factor(filter$carsize)
filter$type = as.factor(filter$type)
yF = filter$noise
type = filter$type
carsize = filter$carsize

fit.carsize = lm(yF ~ carsize)
fit.type = lm(yF ~ type)
fit.both = lm(yF ~ carsize + type)
fit.interaction = lm(yF ~ carsize*type)

num = (sum(residuals(fit.carsize)^2) - sum(residuals(fit.interaction)^2) )/(5) 
den=  (sum(residuals(fit.interaction)^2)/30)
print(num/den)

anova(fit.carsize, fit.interaction)

r1 = filter[filter$type == "normal filter",]
r2 = filter[filter$type == "Octel filter",]

r11 = filter[carsize =="small car"]
r12 = filter[carsize == "medium car"]


