#ไพ่1suit มี3ค่า มีเลข,ดอก,valueของไพ่ในแต่ละเกม
#เก็บเป็น numberic อย่างเดียวไม่ได้ เพราะมันมีค่าดอก 
#lecture chapter5
#สับไพ่แจกไพ่

card <-function(){
  ## อาจารย์มีไฟล์ desk .csvให้
  deck <- read.csv("deck.csv")
  
 face <- c("ace" , "two" , "six")
 suit <- c("clubs","clubs","clubs")
 value <- c(1,2,3)

 df <- data.frame(face,suit,value)
 deck

} 

deck <- read.csv("deck.csv")

##suffle สำรับไพ่
deal <- function(deck){
  #order สลับไพ่
  suf <- sample(1:length(deck),length(deck),replace=F)
  ##สลับแล้วเก็บเข้าสำรับจริง
  assign("deck", list(deck[suf,]), envir = globalenv())
  print(first)
}

##จะแจกไพ่แบบที่ไพ่หายจากสำรับ
deal <- function() {
  card <- deck[1, ]
  ##สั่งทำงานกับตัวแปร Global varibal
  ##ตัวที่มันเปลี่ยนก็จะไปเปลี่ยนที่ Deck ที่อยู่ด้านนอกเลย
  assign("deck", deck[-1, ], envir = globalenv())
  ## globalenv$deck <-deck[-1, ] ได้เหมือนกัน
  ##แต่ว่าถ้ามันเป็น package จะแก้ยาก
  card
}

