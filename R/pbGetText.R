# Get raw post output
pbGetText <- function(pasteKeys){
  finalText <- NA
  for(i in 1:length(pasteKeys)){
    text <- getURL(paste0("http://pastebin.com/raw.php?i=",
                          pasteKeys[i])
    )
    finalText <- c(finalText, text)
  }
  finalText[!is.na(finalText)]
}