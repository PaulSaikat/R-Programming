h <- "Hello"
print("What is your name?")
yourname <- readline()
print(paste(h, yourname))
save(yourname, file="yourname.rda")