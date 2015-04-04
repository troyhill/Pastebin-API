# code creates pastebin post(s) based on input text
# this code requires an API developer key!
# posts are public by default ('privacy_code')
# posts as guest by default - to post as a user, a session key ('user_key') is required

pbPost <- function(session_key = "", api_dev_key = "", 
                   text = "hello world!", title = "Untitled", expire = "1W", privacy_code = "0"){
  expiry <- c("N", "10M", "1H", "1D", "1W", "2W", "1M")
  if(!expire %in% expiry) stop("Expiration time not valid - check pastebin.com/api")
  if(session_key %in% "") password <- ""
  if(!privacy_code %in% c("0", "1", "2")) stop("`privacy_code` must be `0`, `1`, or `2`.")

  pasteList <- NA
  for(i in 1:length(text)){
    post <- postForm(uri = 'http://pastebin.com/api/api_post.php',
                     api_option = "paste",
                     api_dev_key = api_dev_key,
                     api_paste_code = text[i],
                     api_paste_private = privacy_code, # 0=public 1=unlisted 2=private 
                     api_paste_name = title, 
                     api_paste_expire_date = expire,
                     api_user_key = session_key
    )
    pasteList <- c(pasteList, post[1])
  }
  pasteList[!is.na(pasteList)]
}
