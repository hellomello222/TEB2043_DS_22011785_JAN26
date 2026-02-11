name <- "Hanis"
phone <- "0123456789"

formatted_phone <- paste0(
  substr(phone, 1, 3),
  " - xxxxx ",
  substr(phone, nchar(phone)-3, nchar(phone))
)

cat("Hi,", toupper(name), 
    ". A verification code has been sent to", 
    formatted_phone)
