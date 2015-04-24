library(ggplot2)
library(animation)
library(knitr)
library(markdown)

## Deactivate scientific notation
options(scipen=999)

## Reading data
data=read.delim("audit.txt")

## Plot original 
print(ggplot(data, aes(x=Income)) + geom_histogram())

## Histogram plot
data_copy=data
saveGIF({
  for (i in 1:10)
  {    
  ## Getting value for deleting highest 1%.
    cut_value=quantile(data_copy$Income, 0.99, na.rm = TRUE, names = FALSE)
    
    ## Deleting highest 1%
    data_copy=subset(data_copy, data_copy$Income <= cut_value )
    
    ## Plotting histogram for variable Income
    print(ggplot(data_copy, aes(x=Income)) + geom_histogram())
  }
},  movie.name= "fractal_outliers.gif", interval = 0.3, ani.width = 600, ani.height = 600)

data_copy=data
## Density plot 
saveGIF({
  for (i in 1:10)
  {    
    ## Getting value for deleting highest 1%.
    cut_value=quantile(data_copy$Income, 0.99, na.rm = TRUE, names = FALSE)
    
    ## Deleting highest 1%
    data_copy=subset(data_copy, data_copy$Income <= cut_value )
    
    ## Plotting density for variable Income
    print(ggplot(data_copy, aes(x=Income)) +geom_density(alpha = 0.4,fill="blue",adjust=0.4))
  }
},  movie.name= "fractal_outliers_density.gif", interval = 0.3, ani.width = 600, ani.height = 600)

#### Exporting to html
# knit("fractal_en.Rmd",encoding="UTF-8")
# markdownToHTML("fractal_en.md", "Dynamic analysis on outliers.html")

# knit("fractal_es.Rmd",encoding="UTF-8")
# markdownToHTML("fractal_es.md", "Análisis dinámico de outliers.html",encoding="UTF-8")

