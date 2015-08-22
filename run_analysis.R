
## Read in data
## --------------------------
## Read test data
xTest <- read.table("X_test.txt");
yTest <- read.table("y_test.txt", colClasses = c("factor"));
subTest <- read.table("subject_test.txt");
test <-cbind(subTest,xTest,yTest);

## Read test data
xTrain <- read.table("X_train.txt");
yTrain <- read.table("y_train.txt", colClasses = c("factor"));
subTrain <- read.table("subject_train.txt");
train <-cbind(subTrain,xTrain,yTrain);

## Combine test and train data
dat <- rbind(train, test);

#add levels to the factor
levels(dat[,563]) = c("WALKING","WALKING_UPSTAIRS","WALKING_DOWNSTAIRS",
                      "SITTING","STANDING","LAYING");

## Read in the features
features <- read.table("features.txt", stringsAsFactors=FALSE);

## add feature names to the dataset
names(dat) <- c("subject", features[[2]], "activity");

## select only columns that include the words subject/mean/std/activity in name
pattern <- ".*(subject|mean|std|activity).*";
ind <- grep(pattern, names(dat), ignore.case=TRUE);
dat <- dat[, ind];

## creates independent tidy data set with the average of each variable for each 
## activity and each subject
dat <- dat %>% group_by(subject,activity) %>% summarise_each(funs(mean));

## Output the final dataset
write.table(dat, file="UCI HAR Dataset - Final Tidy.txt", row.name=FALSE);
View(dat);
# dat <- group_by(dat, subject, activity);

#o = summarize(dat,q=mean(dat$"tBodyAcc-mean()-X"));