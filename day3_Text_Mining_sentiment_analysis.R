# Text Mining
library(tm)
dat<-read.csv("Reviews_6.csv",stringsAsFactors = FALSE)
#Pre-process the data
review_text<-paste(dat$text, collapse = " ") # grouping all reviews
review_source<-VectorSource(review_text)# collection of texts
review_corpus<-Corpus(review_source) 
#Cleaning the text
review_corpus<-tm_map(review_corpus,content_transformer(tolower)) # upper to lower cases
review_corpus<-tm_map(review_corpus,removePunctuation)
review_corpus<-tm_map(review_corpus,stripWhitespace)
review_corpus<-tm_map(review_corpus,removeWords,stopwords("english"))
#create a document term matrix
dtm<-DocumentTermMatrix(review_corpus)
dtm2<-as.matrix(dtm)# forcing to convert to matrix form
F<-colSums(dtm2)
#sorting
F1<-sort(F,decreasing = TRUE)
library(wordcloud)
my_words<-names(F1)
wordcloud(my_words[1:100],F1[1:100])














