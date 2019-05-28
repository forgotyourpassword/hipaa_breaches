## @knitr clean_breach_type

# clean the type of breach strings
toSpace <- content_transformer(function (x , pattern ) gsub(pattern, " ", x))
clean <- as.character(breaches$Type.of.Breach)
clean <- Corpus(VectorSource(clean))
clean <- tm_map(clean, toSpace, "/")
clean <- tm_map(clean, toSpace, "@")
clean <- tm_map(clean, toSpace, "\\|")
clean <- tm_map(clean, content_transformer(tolower))
clean <- tm_map(clean, removeNumbers)
clean <- tm_map(clean, removePunctuation)
clean <- tm_map(clean, stripWhitespace)
clean <- tm_map(clean, removeWords, stopwords("english"))