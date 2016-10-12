#Install and load supporting libraries.
print(Sys.info()[4])

R.Version()$version.string
library(rmarkdown, quietly = TRUE, warn.conflicts = FALSE)
library(dplyr, quietly = TRUE, warn.conflicts = FALSE)
library(knitr, quietly = TRUE, warn.conflicts = FALSE)
library(ggplot2)
print("list of loaded packages: ")
print((.packages()))

#set some default directories based on machine location
if(Sys.info()[4]=="DZ2626UTPURUCKE"){
  dehyd.root <- "k:/git/glinski_dehydration/"
}
print(paste("Root directory location: ", dehyd.root, sep=""))

dehyd.csv.in <- paste(dehyd.root, "csv_in/", sep="")
dehyd.csv.out <- paste(dehyd.root, "csv_out/", sep="")
dehyd.graphics <- paste(dehyd.root, "graphics/", sep="")
dehyd.tables <- paste(dehyd.root, "tables/", sep="")

#check to see if directories are accessible
print(paste("check to see if R can access files OK: ", file.exists(dehyd.csv.in), sep = ""))