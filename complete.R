
complete <- function(directory,id=1:332){
  
  ##directory = "C:\\Users\\Eveoat\\Documents\\specdata\\"
  file_full <- list.files(directory,full.names=T)
  
  dat <- data.frame()
  comp <- data.frame()
  c=1
  for(i in id){
    dat <- read.csv(file_full[i])
    dat["fileno"]<-i
    com <- complete.cases(dat)
    nobs<-nrow(dat[com,])
    temp<- data.frame(i,nobs)
    comp <-  rbind(comp,temp)
  }
  
 ## colnames(comp,c("id","nobs"))
 comp
  
  
} 

