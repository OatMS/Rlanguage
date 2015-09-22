


corr<-function(directory,threshold = 0){
  
  
  ## เลือกอันที่มี complete case > threshold แล้วเอามาหา corralation กันระหว่างสองเวกเตอร์
  file_full <- list.files(directory,full.names=T)
  
  corrVec <- c();
  
  for(i in 1:length(file_full)){
    completeCases <- complete(directory, i)
    
    if(completeCases$nobs > threshold){
      dat <- (read.csv(file_full[i]))
      corrVec <- c(corrVec, cor(dat$sulfate, dat$nitrate, use = "complete.obs"))
    }
  }
  
  corrVec;
  
}


