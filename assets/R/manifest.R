## @knitr manifest

knitr::opts_chunk$set(warning = FALSE, message = FALSE)
library(flexdashboard)
library(dplyr)
library(ggplot2)
library(kableExtra)
library(stringdist)
library(reshape2)
library(stringr)
library(wordcloud2)
library(tm)
library(usmap)


# Define multmerge function - merges multiple csv files together
multmerge = function(mypath) {
  filenames=list.files(path=mypath, full.names = TRUE)
  datalist = lapply(filenames, function(x){
    read.csv(file=x,header=T,stringsAsFactors = F)
  })
  Reduce(function(x,y){
    merge(x,y,all = TRUE)
  }, datalist)
}
