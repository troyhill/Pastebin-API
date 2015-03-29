\name{pbGetText}
\alias{pbGetText}
\title{Load the raw content of a Pastebin post}
\description{
  Brings content from pastebin into R.
}
\usage{
  pbGetText(pasteKeys)
}
\arguments{
  \item{pasteKeys}{a vector of paste IDs (such as can be generated using /code{pbListPosts()})}
}
}
\value{
  \item{output}{a character object.}
}
\examples{
# generate a session key first
# a <- pbListPosts(session_key = key) # lists all of beepbeepbeep's posts
# pbGetText(a[1]) # get the content
# pbGetText(a)
}