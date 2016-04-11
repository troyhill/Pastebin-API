\name{getUserKey}
\alias{getUserKey}
\title{Generate session key}
\description{
  Generates a session key from Pastebin API, allowing user to create and delete signed pastes.
}
\usage{
  getUserKey(api_dev_key, api_user_name, api_user_password)
}
\arguments{
  \item{api_dev_key}{Development key for Pastebin API, from http://pastebin.com/api/}
  
  \item{api_user_name}{Your Pastebin account username}
  
  \item{api_user_password}{Your Pastebin account password}
}
\value{
  \item{session_key}{A Pastebin session key.}
}
\examples{
# dev_key <- "your dev key"
# user_name <- "your username"
# user_password <- "your password"

# session_key <- getUserKey(api_dev_key = dev_key, api_user_name = user_name, api_user_password = user_password) # generate a session key
}