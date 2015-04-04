# delete specified post(s)
# 'paste' is a list of posts to delete (only the part of the url following 'pastebin.com/')

pbDeletePost <- function(paste, user_key = "", api_dev_key = ""){
  for(i in 1:length(paste)){
    postList <- postForm(
      uri = 'http://pastebin.com/api/api_post.php',
      api_dev_key = api_dev_key,
      api_user_key = user_key, # session key
      api_paste_key = paste[i],
      api_option = "delete"
    )
  }
}
