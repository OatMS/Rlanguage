pollutantmean <- function(directory,pollutant,id=1:332){
  
  ## directory = "C:\\Users\\Eveoat\\Documents\\specdata\\"
  file_full <- list.files(directory,full.names=T)
  
  dat <- data.frame()
  
  for(i in id){
    dat <- rbind(dat,read.csv(file_full[i])) 
 
  }
  mean(dat[,pollutant],na.rm=T)
   
    
  }
  
  
  