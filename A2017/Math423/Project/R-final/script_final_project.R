rm(list = ls())
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))
library("NHANES")
survey = read.csv("nhanes-sub.csv",header = TRUE)

bpdia = survey$bpdia

survey = survey[, names(survey) != "year"] 

#bpdia
is.fact <- sapply(survey, is.factor)
survey[is.fact] = lapply(survey[is.fact],factor)

unwantedCols = c("bpdia","bpsys","X","id")
coln = colnames(survey)
f <- as.formula(paste("bpdia ~", paste(coln[!coln %in% unwantedCols], collapse='+')))

fit.fullAdd = lm(f, survey)
summary(fit.fullAdd)
