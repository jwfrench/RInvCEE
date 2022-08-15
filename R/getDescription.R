#' InvestCEE
#' This function provides access to the a specific data description stored in a central repository
#' @import tidyverse
#' @import RCurl
#' @export
getDescription = function(conceptCode, countryCode) {
  #the function for extracting a single data code from a country iso code and a concept
  #library(RCurl)
  # library(tidyverse)

  url = "https://raw.githubusercontent.com/jwfrench/RInvCEE/main/Data%20descriptions%20for%20Github.csv"
  x = getURL(url)
  data = as.data.frame(read.csv(text = x, header = TRUE))
  names(data)[1] = "countryName"

  codeToUse = if ((conceptCode %in% names(data)) & (countryCode %in% data$isoCode)) { #if 'code' input from concept list matches something in code map,
    countryCodes = filter(data, isoCode == countryCode)
    countryCodes[[conceptCode]]  # return the value associated with it
  } else {
    conceptCode #else just plug in concept code
  }

  codeToUse
}
