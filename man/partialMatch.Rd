% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/partialMatch.R
\name{partialMatch}
\alias{partialMatch}
\title{Identify similiar strings by matching words within the strings}
\usage{
partialMatch(set1, set2)
}
\arguments{
\item{set1}{vector<string>. A set of strings. Required. No default.}

\item{set2}{vector<string>. A set of strings against which the strings in
set1 (see above) are matched. Required. No default.}
}
\value{
The positions of the closest match in set2 for each element in set1.
  If no partial match is found (i.e. no words in common), then NA is returned
  for that string. If multiple strings in set1 match to the same string in
  set2, then the position is returned for the string in set1 with the most
  words in common; all other strings return zero.
}
\description{
\code{partialMatch} compares the similarity of strings by matching words
within the strings. The function takes two sets of strings. The strings are
split so that each string becomes a list of its composite words. For each
string in the first set, the position of the string in the second set with
which it shares the most words is returned as its match.
}
\examples{
\dontrun{

# Trivial example of partialMatch, as each string in the first set has a perfect
match in the second set (in these scenarios, partialMatch replicates the base function match)

partialMatch(c("Hello World","Buddy Holly","Marie Curie"),
c("Buddy Holly","Marie Curie","Hello World"))

# When a string has no match in the second set, NA is returned for that string.

partialMatch(c("Barack Obama","Hello World","Buddy Holly",
"Marie Curie"),c("Buddy Holly","Marie Curie","Hello World"))

# The benefit of partialMatch is the strings don't need to be identical to be matched

partialMatch(c("Barack Obama","Hi World","Buddy Holly",
"Marie Sklodowska Curie"),c("Buddy Holly","Marie Curie","Hello World"))

 # In the event of multiple strings in set1 partially matching the same string
 in set2, only the string with the best match returns a position (the rest return NA)

partialMatch(c("This is not a test","Start the test"),c("This is a test"))

}
}

