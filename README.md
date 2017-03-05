# smartphoneData
This repo contains:
  - run_analysis.R, the commands use to transform the raw data to the tidy dataset
  - smartphoneData.csv, the csv file containing a tidy data set for week 4 of Coursera's "Getting and Cleaning Data" class
  - Codebook.md, which describes the source data, variable names and transformation of the data

the general flow of the R code in run_analysis.R is described below:
- download the data
- read in the feature data first, for both the test and training datasets, in Xtest and Xtrain dataframes
- combine both test and training feature data into one dataframe, Xdata
- read in the response data, for both the test and training datasets, in Ytest and Ytrain dataframes
- combine both test and training response data into one dataframe, Ydata
- read in the subject data, for both the test and training datasets, in testSubject and trainSubject dataframes
- combine into one dataframe, subjectID
- read in the feature names, which will become the variable names, into varNames dataframe
- set all the column names for the dataframes
- select the subset of the columns representing mean and standard dev measures
- glue all the data together into one dataframe, allData
- read in the defintions for the response variables
- change the response numbers to categorical responses in the dataframe
- clean up the variable names by removing parens, dashes, etc.
- group the dataframe by subjectID, activity
- summarize the grouped dataframe by determining the mean for each variable
- write the dataframe to a text file
