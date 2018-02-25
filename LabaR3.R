> Sys.setlocale(locale = "ukrainian")
[1] "LC_COLLATE=Ukrainian_Ukraine.1251;LC_CTYPE=Ukrainian_Ukraine.1251;LC_MONETARY=Ukrainian_Ukraine.1251;LC_NUMERIC=C;LC_TIME=Ukrainian_Ukraine.1251"
> fileURL <- "http://data.gov.ua/file/152588/download?token=Nk14ZhWf"
> download.file(fileURL, destfile = "data.xls", mode = "wb")
trying URL 'http://data.gov.ua/file/152588/download?token=Nk14ZhWf'
Content type 'application/vnd.ms-excel' length 324096 bytes (316 KB)
downloaded 316 KB
> data <- read.xlsx("data.xls", sheetIndex = 1, startRow=6, as.data.frame=TRUE, encoding = "UTF-8")
> head(data)
> download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv", destfile = "data.csv")
trying URL 'https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv'
Content type 'text/csv' length 4246554 bytes (4.0 MB)
downloaded 4.0 MB
> data <- read.csv("data.csv")
> values <- data$VAL
> a <- lapply(values, function(x) if (!is.na(x) && x==24) TRUE else NA)
> length(a[!is.na(a)])
[1] 53
> url <- "http://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Frestaurants.xml"
> doc <- xmlTreeParse(url,useInternal=TRUE)
> rootNode <- xmlRoot(doc)
> length(xpathApply(rootNode, '//row/row/zipcode[text()="21231"]'))
[1] 127
