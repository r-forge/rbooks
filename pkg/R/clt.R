`clt` <-
function(overwrite = FALSE){
require(Rpad)
## a check to see whether the clt.Rpad file already exists in the working directory
dir.data <- dir()
if(length(grep("clt.Rpad", dir.data)) == 0) {replacenotes()}
## Above and below could be put together
if(overwrite == TRUE) {replacenotes()}
## a horrible kludge, but this tries to stop the server in order that the next command can start it again (and it does complain about it)
try(stopRpadServer(), silent = TRUE)
## load the Rbook in Rpad
Rpad("clt.Rpad")
}

`replacenotes` <- 
function(){
## load the Rbook
data(cltbook)
## figure out where the images are stored
pkgs <- installed.packages()
imgpath <- paste(pkgs[pkgs[,1]=="Rbooks",2], "/Rbooks/img", sep = "")
cltbook2 <- sub("imgpath", imgpath, cltbook)
writeLines(cltbook2, "clt.Rpad")
}



