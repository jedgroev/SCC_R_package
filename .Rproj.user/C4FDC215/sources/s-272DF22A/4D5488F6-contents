# SCC_R_package

```r
install.packages('devtools')
install.packages('todor')
install.packages('pkgdown')
```
## 1. Making a basic R-package (without github/gitlab)

Manually make:
  1) Package Directory (SCC_R_package)
2) R-directory (SCC_R_package/R)
3) Functions (SCC_R_package/R/functions.R)
4) Description-file (SCC_R_package/DESCRIPTION)
5) Load package 

```r
devtools::load_all() # shortcut: cmd tab l
```

```r
F <- 20 
C <- F_to_C(F)
F <- C_to_F(C)

?F_to_C
```

## 2. Document R-package 

Navigate to R-functions 
1) Add roxygen2 tags (@param, @return, @examples, @export, @details, @description, @name)
2) Document package 
3) navigate through package

```r
devtools::document()
devtools::load_all()
```

```r
?F_to_C
```

## 3. github 

1) go to github or gitlab
2) create a new project and add already a readme
3) copy the http link (e.g. https://github.com/jedgroev/SCC_R_package.git)
4) create a new project in rstudio (choose git-project)
1. specify the directory to the package (SCC_R_package)
2. paste the http link (https://github.com/jedgroev/SCC_R_package.git)
3. press pull (README is added)
4. make a change in the README 
5. commit / push changes to git

Important git commands: 
  - commit: use commit to submit changes to git.
- push: use push to push the commited changes to git.
- pull: use pull to pull changes made in github. 

Tips and tricks: 
  - commit changes with a meaningfull description

## 4. build a website 

### github 

1) navigate to https://github.com/<username>/<project>/settings/pages
2) specify the branch (e.g. main / master)
3) in rstudio run

```r
require(devtools)
usethis::use_readme_rmd()
usethis::use_news_md()
usethis::use_vignette("test") 
usethis::use_pkgdown()
# usethis::use_github_links()
pkgdown::build_site()
```




#############################
### 1.1. create directory
```r
dir.create('SCC_R_package')
```

### 1.2. create R-directory
```r
dir.create('R')
```

### 1.3. create functions
```r
f <- '
F_to_C <- function(F_temp){
    C_temp <- (F_temp - 32) * 5/9;
    return(C_temp);
}

C_to_F <- function(C_temp){
    F_temp <- (C_temp * 9/5) + 32;
    return(F_temp);
}
'

write.table(f, file = './R/functions.R', sep = '', row.names=F,col.names=F, quote=FALSE)
```

### 1.4. create description file 

```r
d <- '
Package: SCCTempConverter
Type: Package
Title: Temperature Conversion Package for Demonstration
Version: 0.0.1.0
'

write.table(d, file = 'DESCRIPTION', sep = '', row.names=F,col.names=F, quote=FALSE)
```


## 2. adding documentation 

### 2.1.   

```r
f <- "
#' Fahrenheit conversion
#'
#' Convert degrees Fahrenheit temperatures to degrees Celsius
#' @param F_temp The temperature in degrees Fahrenheit
#' @return The temperature in degrees Celsius
#' @examples 
#' temp1 <- F_to_C(50);
#' temp2 <- F_to_C( c(50, 63, 23) );
#' @export
F_to_C <- function(F_temp){
    C_temp <- (F_temp - 32) * 5/9;
    return(C_temp);
}

#' Celsius conversion
#'
#' Convert degrees Celsius temperatures to degrees Fahrenheit
#' @param C_temp The temperature in degrees Celsius
#' @return The temperature in degrees Fahrenheit
#' @examples 
#' temp1 <- C_to_F(22);
#' temp2 <- C_to_F( c(-2, 12, 23) );
#' @export
C_to_F <- function(C_temp){
    F_temp <- (C_temp * 9/5) + 32;
    return(F_temp);
}
"

write.table(f, file = 'R/functions.R', sep = '', row.names=F,col.names=F, quote=FALSE)

```

devtools::document()

## 
