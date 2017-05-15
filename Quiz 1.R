
setwd("~/Coursera/Capstone")

library(dplyr)
library(tidytext)
library(readr)

blogs <- data_frame(text = read_lines("E:/CARAYA/II - GitRepos/en_US/en_US.blogs.txt")) 
news <- data_frame(text = read_lines("E:/CARAYA/II - GitRepos/en_US/en_US.news.txt")) 
twitter <- data_frame(text = read_lines("E:/CARAYA/II - GitRepos/en_US/en_US.twitter.txt")) 

blogs.len <- nchar(blogs$text)
news.len <- nchar(news$text)
twitter.len <- nchar(twitter$text)

max(blogs.len)
max(news.len)
max(twitter.len)

n_love <- length(grep('love',twitter$text))
n_hate <- length(grep('hate',twitter$text))

n_love / n_hate

i_biostat <- grep('biostat',twitter$text)
twitter$text[c(i_biostat-2,i_biostat-1,i_biostat,i_biostat+1,i_biostat+2)]

i_char <- grep('A computer once beat me at chess, but it was no match for me at kickboxing',twitter$text)
length(i_char)


unnest_tokens(word, text, format = "html")


## Cargamos desde GitHub
githubURL <- "https://github.com/craraya/MR_P_201701_Gob_Trans/blob/master/Datos.RData?raw=True"
load(url(githubURL))


