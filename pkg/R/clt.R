`clt` <-
function(overwrite = FALSE){
require(Rpad)
## a check to see whether the clt.Rpad file already exists in the working directory
dir.data <- dir()
if(length(grep("clt.Rpad", dir.data)) == 0) {cat("\n \n You appear to have no files in your working directory.  \n \n If you are sure this is the working directory you wish to use, \n \n you may wish to set the overwrite option to TRUE and start again \n \n \n ")}

if(overwrite == TRUE) {replacenotes()
## a horrible kludge, but this tries to stop the server in order that the next command can start it again (and it does complain about it)
try(stopRpadServer(), silent = TRUE)}
## load the Rbook in Rpad
if(length(grep("clt.Rpad", dir.data)) == 0){
Rpad("clt.Rpad")}
}

`replacenotes` <- 
function(){
## load the Rbook
data(cltbook)
writeLines(cltbook, "clt.Rpad")

require(biOps)
data(cltimg)
for (i in 1:24){
eval(parse(text = paste("writeJpeg(\"cltimg", i, ".jpeg\", cltimg[[", i, "]])", sep = "")))
}

}



