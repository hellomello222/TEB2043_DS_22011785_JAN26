string1 <- readline("Enter string 1: ")
string2 <- readline("Enter string 2: ")

if (tolower(string1) == tolower(string2)){
  similarity <- TRUE;
} else{
  similarity <- FALSE;
}

cat("This program compare 2 strings. Both inputs are similar: ", similarity)