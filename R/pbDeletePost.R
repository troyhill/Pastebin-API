# delete specified post(s)
# 'paste' is a list of posts to delete (only the part of the url following 'pastebin.com/')

pbDeletePost <- function(paste, session_key, api_dev_key){
  if(session_key %in% "") stop("`session_key` is a required input. Generate one with ?getUserKey")
  if(api_dev_key %in% "") stop("Your API development key is missing. Get your key by visiting pastebin.com/api")
  
  for(i in 1:length(paste)){
    postList <- postForm(
      uri = 'http://pastebin.com/api/api_post.php',
      api_dev_key = api_dev_key,
      api_user_key = session_key,
      api_paste_key = paste[i],
      api_option = "delete"
    )
  }
}
