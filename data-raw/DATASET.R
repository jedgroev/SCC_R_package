## code to prepare `DATASET` dataset goes here
#usethis::use_data(DATASET, overwrite = TRUE)

date <- as.Date('2023-09-01')
timestamp <- seq(date,date + 30,1)
celcius <- sample(seq(10,20,0.1),length(timestamp))
temperatures <- data.frame(timestamp=timestamp,celcius=celcius)
usethis::use_data(temperatures, overwrite = TRUE)
