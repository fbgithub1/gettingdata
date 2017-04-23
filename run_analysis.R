## run_analysis.R
## 4/21/17

###############################################################################
## General.
###############################################################################

# ASSUMES THAT THIS SCRIPT IS IN SAME WORKING DIRECTORY AS DOWNLOADED DATA!

# Get variable names.
features <- read.delim("features.txt", header = F, sep=" ")[2]
features <- as.vector(features[,1])

# Get activity labels (levels of a factor var)
vylevels <- as.vector(
  read.delim("activity_labels.txt", header = F, sep=" ")[2]
)[,1]
vylevels <- tolower(vylevels)

###############################################################################
## "test" data. Keep only vars with "mean()" or "std()" in their names.
###############################################################################

# activity labels as a factor.
vy <- as.vector(read.table("test/y_test.txt", header = F))[,1]
vy <- factor(vy, 1:6, labels = vylevels)

# subject labels.
vsubject <- as.vector(read.table("test/subject_test.txt", header = F))[,1]

# Process "test" data.
df1 <- read.table("test/X_test.txt", header = F)
names(df1) <- features
df1 <- df1[, grepl("mean\\(\\)|std\\(\\)", features)]

# cbind activity labels ("walking", "sitting", etc.) 
# & set label ("test") to rest of data
df1 <- cbind(set = "test", vy, vsubject, df1)
names(df1)[2] <- "activity"
names(df1)[3] <- "subject"

###############################################################################
## "train" data. Keep only vars with "mean()" or "std()" in their names.
###############################################################################

# activity labels as a factor.
vy <- as.vector(read.table("train/y_train.txt", header = F))[,1]
vy <- factor(vy, 1:6, labels = vylevels)

# subject labels.
vsubject <- as.vector(read.table("train/subject_train.txt", header = F))[,1]

# Process "training" data.
df2 <- read.table("train/X_train.txt", header = F)
names(df2) <- features
df2 <- df2[, grepl("mean\\(\\)|std\\(\\)", features)]

# cbind activity labels ("walking", "sitting", etc.)
# & set label ("train") to rest of data
df2 <- cbind(set = "training", vy, vsubject, df2)
names(df2)[2] <- "activity"
names(df2)[3] <- "subject"

###############################################################################
## Merge "test" data & "train" data.
###############################################################################

df3 <- rbind(df1, df2)

###############################################################################
## Generate output DF with averages of variables.
###############################################################################

library(dplyr)
df4 <- df3 %>% select(-set) %>% group_by(activity, subject) %>% summarize_each(funs(mean))
str(df4)
df4
write.table(df4, "output.txt", row.name = F)

