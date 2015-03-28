# code creates pastebin post(s) based on input text
# this code requires a developer key! A user key is optional
# posts are public by default
# posts as guest by default - otherwise, api_user_password needs to be defined before using code

pbPost <- function(text = "hello world!", title = "Untitled", 
                   user_key = "", expire = "1W"){
  expiry <- c("N", "10M", "1H", "1D", "1W", "2W", "1M")
  if(!expire %in% expiry) stop("Expiration time not valid - check pastebin.com/api")
  if(user_key %in% "") password <- ""

  pasteList <- NA
  for(i in 1:length(text)){
    post <- postForm(uri = 'http://pastebin.com/api/api_post.php',
                     api_option = "paste",
                     api_dev_key = api_dev_key,
                     api_paste_code = text[i],
                     api_paste_private = api_paste_private, 
                     api_paste_name = title, 
                     api_paste_expire_date = expire,
                     api_user_key = user_key
    )
    pasteList <- c(pasteList, post[1])
  }
  pasteList[!is.na(pasteList)]
}