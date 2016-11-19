#who am i
print(Sys.info()[4])

#r version installed
R.Version()$version.string

#flush
all.objects <- objects()
rm(list=all.objects)
rm(all.objects)

#base list of packages
print("base packages: ")
print((.packages()))

#change options?
#options(chmhelp=FALSE, htmlhelp=TRUE)

#install needed packages if not previously installed
print("installed packages:")
print(rownames(installed.packages()))
if("opencpu" %in% rownames(installed.packages()) == FALSE) {install.packages("opencpu")}
if("dplyr" %in% rownames(installed.packages()) == FALSE) {install.packages("dplyr")}
if("plyr" %in% rownames(installed.packages()) == FALSE) {install.packages("plyr")}
if("knitr" %in% rownames(installed.packages()) == FALSE) {install.packages("knitr")}
if("rmarkdown" %in% rownames(installed.packages()) == FALSE) {install.packages("rmarkdown")}
if("httr" %in% rownames(installed.packages()) == FALSE) {install.packages("httr")}

#install support libraries
library(rmarkdown, quietly = TRUE, warn.conflicts = FALSE)
library(dplyr, quietly = TRUE, warn.conflicts = FALSE)
library(knitr, quietly = TRUE, warn.conflicts = FALSE)
library(ggplot2)

#updated list of installed packages
print("list of loaded packages: ")
print((.packages()))

#set some default directories based on machine location
if(Sys.info()[4]=="DZ2626UTPURUCKE"){
  dir.root <- "k:/git/some_dir/"
}
print(paste("Root directory location: ", dir.root, sep=""))

dir.csv.in <- paste(dir.root, "csv_in/", sep="")
dir.csv.out <- paste(dir.root, "csv_out/", sep="")
dir.graphics <- paste(dir.root, "graphics/", sep="")
dir.tables <- paste(dir.root, "tables/", sep="")

#check to see if directories are accessible
print(paste("check to see if R can access files OK: ", file.exists(dir.csv.in), sep = ""))