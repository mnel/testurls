urlR <- "http://home.versanet.de/~s-berman/source2.R"
testfun <- function(urlm){stopifnot(length(scan(urlm,"", quiet=TRUE))==7)}
# works 
url_default <- url(urlR)
testfun(url_default)
             

#url_default_en <- url(urlR, encoding = "UTF-8")
#testfun(url_default_en)
url_internal <- url(urlR, method = 'internal')
testfun(url_internal)


url_internal_en <- url(urlR, encoding = "UTF-8", method = 'internal')
testfun(url_internal_en)

