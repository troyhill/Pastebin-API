# Generates a pastebin user key
# Arguments: user-specific user name, password, and API development key from http://pastebin.com/api/

getUserKey <- function(api_dev_key, api_user_name, api_user_password){ 
  # requires RCurl library
  key <- postForm(uri = 'http://pastebin.com/api/api_login.php',
                  api_dev_key = api_dev_key,
                  api_user_name = api_user_name,
                  api_user_password = api_user_password)
  return(key[1])
}