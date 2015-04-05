\name{getUserKey}
\alias{getUserKey}
\title{Generate session key}
\description{
  Generates a session key from Pastebin API, allowing user to create and delete signed pastes.
}
\usage{
  getUserKey(api_user_name, api_user_password, api_dev_key)
}
\arguments{
  \item{api_user_name}{Your Pastebin account username}
  
  \item{api_user_password}{Your Pastebin account password}

  \item{api_dev_key}{Development key for Pastebin API, from http://pastebin.com/api/}
}
\value{
  \item{session_key}{A session key.}
}
\examples{
# user_name <- "your username"
# user_password <- "your password"
# dev_key <- "your dev key"

# session_key <- getUserKey(user_name, user_password, dev_key) # generate a session key
}
