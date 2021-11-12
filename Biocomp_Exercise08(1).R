# Challenge 1: plot score vs time for each team 

### Create the data for the chart
  #Separate the teams' data
UW.txt<- grep('UW', UWvMSU_1-22-13, ignore.case = FALSE, perl = FALSE, value = FALSE, fixed = FALSE, useBytes = FALSE, invert = FALSE)

MSU.txt <- grep('MSU', UWvMSU_1-22-13, ignore.case = FALSE, perl = FALSE, value = FALSE, fixed = FALSE, useBytes = FALSE, invert = FALSE)

  #Put the data into dataframes
df<-read.table(file="UWvMSU_1-22-13.txt", sep="\t", quote="", comment.char="")
df-UW<-read.table(file="UW.txt", sep="\t", quote="", comment.char="")
df-MSU<-read.table(file="MSU.txt", sep="\t", quote="", comment.char="")

# Plot the line graph
plot(df$time, df-UW$score, type=1, col = red)
lines(df$time, df-MSU$score, col = green)
