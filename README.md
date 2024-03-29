R package
================

  - [1 Introduction](#1-introduction)
      - [1.1 Rstudio panels](#11-rstudio-panels)
      - [1.2 Packages](#12-packages)
  - [2 Creating a basic R package](#2-creating-a-basic-r-package)
      - [2.1 Create the package repository
        structure](#21-create-the-package-repository-structure)
      - [2.2 Adding functions](#22-adding-functions)
      - [2.3 Load R package](#23-load-r-package)
      - [2.4 Exercise](#24-exercise)
  - [3 Document with Roxygen](#3-document-with-roxygen)
      - [3.1 Navigate to functions](#31-navigate-to-functions)
      - [3.2 Document your functions](#32-document-your-functions)
      - [3.3 Document package](#33-document-package)
      - [3.4 Exercise](#34-exercise)
  - [4 Add Data](#4-add-data)
      - [4.1 Create data-raw directory](#41-create-data-raw-directory)
      - [4.2 Navigate to DATASET.R](#42-navigate-to-datasetr)
      - [4.3 Edit DATASET.R](#43-edit-datasetr)
      - [4.4 Document your dataset](#44-document-your-dataset)
      - [4.5 Exercise](#45-exercise)
  - [5 Add Vignettes](#5-add-vignettes)
  - [6 Build](#6-build)
      - [6.1 Check Your Package](#61-check-your-package)
      - [6.2 Build Your Package](#62-build-your-package)
      - [6.3 Install and Load Your
        Package](#63-install-and-load-your-package)
      - [6.4 Buildignore](#64-buildignore)
      - [6.5 Exercise](#65-exercise)
  - [7 Git](#7-git)
      - [7.1 Create a New Project on
        GitHub/GitLab](#71-create-a-new-project-on-githubgitlab)
      - [7.2 Copy the Repository Link](#72-copy-the-repository-link)
      - [7.3 Set Up the Project in
        RStudio](#73-set-up-the-project-in-rstudio)
      - [7.4 Modify gitignore file](#74-modify-gitignore-file)
      - [7.5 Make Changes, Commit and
        Push](#75-make-changes-commit-and-push)
      - [7.6 Exercise](#76-exercise)
  - [8 Building a website](#8-building-a-website)
      - [8.1 Create YAML Configuration](#81-create-yaml-configuration)
      - [8.2 Edit the \_pkgdown.yml File](#82-edit-the-_pkgdownyml-file)
      - [8.3 Build Your Package Website](#83-build-your-package-website)
      - [8.4 Commit Changes to Git](#84-commit-changes-to-git)
      - [8.5 Activate Pages on GitHub and
        GitLab](#85-activate-pages-on-github-and-gitlab)
          - [8.5.1 GitHub Pages
            Activation](#851-github-pages-activation)
          - [8.5.2 GitLab Pages
            Activation](#852-gitlab-pages-activation)
      - [8.6 View Your Package Website](#86-view-your-package-website)
  - [9 Large File Support](#9-large-file-support)
      - [9.1 Set up LFS](#91-set-up-lfs)
      - [9.2 Select file types](#92-select-file-types)
      - [9.3 Check .gitattributes](#93-check-gitattributes)
  - [10 Shortcuts](#10-shortcuts)
  - [11 EXTRA](#11-extra)
      - [11.1 todor](#111-todor)

<!-- ```{css, echo=FALSE} -->

<!-- /* html-md-01.css */ -->

<!-- div#TOC li { -->

<!--   list-style-type: none; -->

<!--   list-style-position: outside; -->

<!--   list-style-image: none; -->

<!--   background-image: none; -->

<!--   background-position: 0px center; -->

<!-- } -->

<!-- .navbar-brand, .navbar-fixed-bottom .navbar-collapse, .navbar-fixed-top .navbar-collapse, .pre-scrollable { -->

<!--   font-family: Arial, Helvetica, sans-serif; -->

<!--   font-size: 18px; -->

<!--   font-weight: normal; -->

<!-- } -->

<!-- /* exercise */ -->

<!-- body, td { -->

<!--    font-family: Times, TimesNewRoman, serif; -->

<!--    background-color: white; -->

<!--    font-size: 16px; -->

<!--    margin: 30px; -->

<!--    text-align:justify; -->

<!-- } -->

<!-- /*/* web page */ -->

<!-- /*body, td { -->

<!--   font-family: Times, TimesNewRoman, serif; -->

<!--   background-color: white; -->

<!--   font-size: 16px; -->

<!--   font-weight: normal; -->

<!-- }*/ -->

<!-- /*exercise*/ -->

<!-- tt, code, pre { -->

<!--    font-family: Consolas, "Courier New", Monaco, monospace; -->

<!--    font-size: 13px; -->

<!--    font-weight: bolder; -->

<!-- } -->

<!-- /*web page*/ -->

<!-- tt, code, pre { -->

<!--   font-family: Consolas, "Courier New", Monaco, monospace; -->

<!--   font-size: 13px; -->

<!--   font-weight: bold; -->

<!-- } -->

<!-- h1 { -->

<!--   font-family: "Times New Roman", Times, serif; -->

<!--   font-size: 24px; -->

<!--   font-weight: normal; -->

<!-- } -->

<!-- h1.title { -->

<!--   font-family: Arial, Helvetica, sans-serif; -->

<!--   font-size: 26px; -->

<!--   font-weight: normal; -->

<!-- } -->

<!-- h2 { -->

<!--   font-family: "Times New Roman", Times, serif; -->

<!--   font-size: 20px; -->

<!--   font-weight: normal; -->

<!-- } -->

<!-- h3 { -->

<!--   font-family: "Times New Roman", Times, serif; -->

<!--   font-size: 20px; -->

<!--   font-weight: normal; -->

<!--   font-style: italic; -->

<!-- } -->

<!-- h4 { -->

<!--   font-family: "Times New Roman", Times, serif; -->

<!--   font-size: 18px; -->

<!--   font-weight: bold; -->

<!-- } -->

<!-- h5 { -->

<!--   font-family: "Times New Roman", Times, serif; -->

<!--   font-size: 18px; -->

<!--   font-weight: bold; -->

<!--   font-style: italic; -->

<!-- } -->

<!-- h6 { -->

<!--   font-family: "Times New Roman", Times, serif; -->

<!--   font-size: 16px; -->

<!--   font-weight: bolder; -->

<!-- } -->

<!-- a:visited { -->

<!--    color: rgb(50%, 0%, 50%); -->

<!-- } -->

<!-- tt, code, pre { -->

<!--   font-family: Consolas, "Courier New", Monaco, monospace; -->

<!--   font-size: 13px; -->

<!--   font-weight: bold; -->

<!-- } -->

<!-- /*pre {  -->

<!--    margin-top: 0; -->

<!--    max-width: 100%; -->

<!--    border: 1px solid #999999; -->

<!--    white-space: pre-wrap; -->

<!-- } -->

<!-- pre code { -->

<!--    display: block;  -->

<!-- /*   padding: 0.2em;*/ -->

<!-- /*   background-color:  #E0E0E0;*/ -->

<!-- } -->

<!-- code.r, code.noeval, code.cpp { -->

<!--    background-color: #eeeeee; -->

<!-- }*/ -->

<!-- table, td, th { -->

<!--   border: none; -->

<!-- } -->

<!-- blockquote { -->

<!--    color:#000000; -->

<!--    margin:0; -->

<!--    padding-left: 1em; -->

<!--    padding-right: 1em; -->

<!--    border-left: 0.5em #E0E0E0 solid; -->

<!--    border-right: 0.5em #E0E0E0 solid -->

<!--   font-family: Times, TimesNewRoman, serif; -->

<!--   background-color: white; -->

<!--   font-size: 16px; -->

<!--   font-weight: normal; -->

<!-- } -->

<!-- hr { -->

<!--    height: 0px; -->

<!--    border-bottom: none; -->

<!--    border-top-width: thin; -->

<!--    border-top-style: dotted; -->

<!--    border-top-color: #999999; -->

<!-- } -->

<!-- @media print { -->

<!--   * { -->

<!--     background-color: transparent !important; -->

<!--     background-image: none !important; -->

<!--     background-repeat: repeat !important; -->

<!--     background-attachment: scroll !important; -->

<!--     background-position: 0% 0% !important; -->

<!--     color: black !important; -->

<!--     filter: none !important; -->

<!--   } -->

<!--   body, td { -->

<!--     font-family: Times, TimesNewRoman, serif; -->

<!--     background-color: white; -->

<!--     font-size: 13px; -->

<!--     font-weight: normal; -->

<!--     width:  940px; -->

<!--     margin: 30px; -->

<!--     right:  860px; -->

<!--     text-align:justify; -->

<!--   } -->

<!--   h1 { -->

<!--     font-family: "Times New Roman", Times, serif; -->

<!--     font-size: 18px; -->

<!--     font-weight: normal; -->

<!--   } -->

<!--   h1.title { -->

<!--     font-family: Arial, Helvetica, sans-serif; -->

<!--     font-size: 18px; -->

<!--     font-weight: normal; -->

<!--   } -->

<!--   h2 { -->

<!--     font-family: "Times New Roman", Times, serif; -->

<!--     font-size: 16px; -->

<!--     font-weight: normal; -->

<!--   } -->

<!--   h3 { -->

<!--     font-family: "Times New Roman", Times, serif; -->

<!--     font-size: 16px; -->

<!--     font-weight: normal; -->

<!--     font-style: italic; -->

<!--   } -->

<!--   h4 { -->

<!--     font-family: "Times New Roman", Times, serif; -->

<!--     font-size: 14px; -->

<!--     font-weight: bold; -->

<!--   } -->

<!--   h5 { -->

<!--     font-family: "Times New Roman", Times, serif; -->

<!--     font-size: 14px; -->

<!--     font-weight: bold; -->

<!--     font-style: italic; -->

<!--   } -->

<!--   h6 { -->

<!--     font-family: "Times New Roman", Times, serif; -->

<!--     font-size: 13px; -->

<!--     font-weight: bolder; -->

<!--   } -->

<!--   tt, code, pre { -->

<!--     font-family: Consolas, "Courier New", Monaco, monospace; -->

<!--     font-size: 13px; -->

<!--     font-weight: bold; -->

<!--   } -->

<!--    img { -->

<!--       max-width: 100% !important; -->

<!--    } -->

<!--    p, h2, h3 { -->

<!--       orphans: 3; widows: 3; -->

<!--    } -->

<!--    h2, h3 { -->

<!--       page-break-after: avoid; -->

<!--    } -->

<!-- } -->

<!-- ``` -->

<!-- ## Table of Contents -->

<!-- [Introduction](#introduction) </br> -->

<!-- [Before starting](#beforestarting) </br> -->

<!-- 1. [Creating a basic R package](#basicpackage) </br> -->

<!-- 2. [Roxygen: Document R package ](#documentroxygen) </br> -->

<!-- 3. [Data](#data) </br> -->

<!-- 4. [Vignettes](#vignettes) </br> -->

<!-- 5. [Build](#build) </br> -->

<!-- 6. [GIT](#GIT) </br> -->

<!-- 7. [Build a website](#www) </br> -->

<!-- 8. [Large File Support](#LFS) </br> -->

<!-- 9. [Shortcuts](#shortcuts) -->

<!-- OVERVIEW  -->

<!-- 1. Create package repository structure  -->

<!-- 2. Create and dfunctions in ./R/functions.R -->

<!-- 3. Document Add Roxygen tags to function  -->

<!-- 4. Document  -->

<!-- 5. Load package  -->

<!-- # <a name="introduction"></a> -->

# 1 Introduction

R packages give you a structure to organize your code (and data) in a
structured and standardized manner. In essence, an R package is a
hyper-organized R project of functions. A first tip, whether you want to
create an R package or not, it is always a beneficial to organize
analyses that are part of a single work-package (e.g. publication,
presentation) into an R project (and to use functions for tasks that can
be repeated). A prerequisite to facilitate creating an R package is
basic knowledge of rstudio-GUI. While RStudio is not necessary to create
an R package, it really makes it much easier.

<!-- # <a name="beforestarting"></a> -->

Before digging into the subject here is an short overview of the rstudio
GUI and a list of necessary packages that will help you with building
your first R package.

## 1.1 Rstudio panels

  - **editor**
  - **console**, terminal, R markdown, jobs
  - **files**, plots, packages, help, viewer
  - **environment**, history, connections, **build**, **git**, tutorial

![figure](./fig/README_editor.png)

To learn more in detail about project management with RStudio and
Rmarkdown please have a look at the following precious resources:

  - <https://carpentries-incubator.github.io/Reproducible-Publications-with-RStudio/>
  - <https://swcarpentry.github.io/r-novice-gapminder/>
  - <https://www.markdownguide.org/basic-syntax/>

## 1.2 Packages

Install the following two quintessential packages that will make your
life much easier.

``` r
install.packages('devtools')
install.packages('usethis')
install.packages('pkgdown')
```

<!-- # <a name="rstudiopackages"></a> -->

# 2 Creating a basic R package

In this section, we’ll guide you through the process of creating a basic
R package using the `devtools` package.

## 2.1 Create the package repository structure

To initiate your R package, start by creating the necessary directory
structure.

In the RStudio menu, navigate to `File -> New Project -> New Directory
-> R package -> name` and replace “name” with the desired name for your
package.

``` r
devtools::create("~/SCCRpackage")
#usethis::create_package('~/SCCRpackage')
```

## 2.2 Adding functions

Once your package structure is set up, you can add functions to it. Open
an R script in the `R/` directory and include your desired functions.
Here, we’ve added two temperature conversion functions as examples:

``` r
F_to_C <- function(F_temp){
    C_temp <- (F_temp - 32) * 5/9;
    return(C_temp);
}

C_to_F <- function(C_temp){
    F_temp <- (C_temp * 9/5) + 32;
    return(F_temp);
}
```

## 2.3 Load R package

To test your functions within the package, load it into your R
environment using one of the following methods:

  - Execute `devtools::load_all()` in the R console.
  - Use the shortcut <kbd>command/ctrl</kbd> + <kbd>shift</kbd> +
    <kbd>L</kbd>.
  - Navigate to `Build -> Load All` in the RStudio menu.

<!-- end list -->

``` r
devtools::load_all() 
```

## 2.4 Exercise

-----

    Create a minimum viable R package manually including:
    
    1) Package Directory (SCC_R_package)
    2) R-directory (SCC_R_package/R)
    3) Functions (SCC_R_package/R/functions.R)
    4) Description-file (SCC_R_package/DESCRIPTION)
    5) Load package with load_all()
    6) Try the functions and check documentation (e.g., ?F_to_C)

-----

In the upcoming sections, we’ll delve into further details on
documentation, testing, and package building. This initial setup lays
the foundation for developing a well-organized and functional R package.

<!-- # <a name="documentroxygen"></a> -->

# 3 Document with Roxygen

When seeking assistance in R, the use of a question mark followed by a
function (e.g., `?table`) guides you to a help page containing
documentation for that specific function. This documentation is a
crucial component that you need to create when constructing your own
package, and it can be seamlessly added using Roxygen tags. To
illustrate, consider the following straightforward example:

``` r
#' @title C_to_F
#' 
#' @description function to convert Celcius to Farenheit
#'
#' @param C_temp numeric value expressing the temperature in degrees Celcius 
#'
#' @return 
#'
#' @export
#'
C_to_F <- function(C_temp){
    F_temp <- (C_temp * 9/5) + 32;
    return(F_temp);
}
```

The tags are identified by `#'` followed by the `@` symbol and the tag
identifier (e.g. `#' @title`). It is generally advisable to include
essential tags such as @title, @description, @param, and @return, and
then add supplementary tags as per the documentation needs (see Table 1
for an overview). After incorporating Roxygen tags, the `document()`
function can be used to generate the requisite manual, embedding the
documentation. See [below](#31-navigate-to-functions) for a step-by-step
guide.

**Table 1.** Roxygen Tags Overview ordered by importance and relevance

| tag            | description                                                                                                                                                             |
| :------------- | :---------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| @title         | Provides a short, one-line description of the purpose of the documented object.                                                                                         |
| @description   | Offers a more detailed description of the documented object. This tag is important for providing comprehensive information about the function or object.                |
| @param         | Documents function parameters. Each parameter is typically documented using a separate @param tag, providing details such as the parameter name, type, and description. |
| @return        | Describes the return value of a function. Similar to @param, it includes details like the type of the return value and a description.                                   |
| @examples      | Provides examples of how to use the function or code block. Examples are crucial for users to understand how to apply the code in practical situations.                 |
| @author        | Specifies the author(s) of the code. It’s a good practice to give credit to those who contributed to the code.                                                          |
| @seealso       | Links to other related functions or documentation. This tag helps users find additional relevant information.                                                           |
| @details       | Offers additional details or information that might be important for users to understand the inner workings or special considerations related to the documented object. |
| @import        | Indicates the packages that need to be imported for the code to run successfully. This is important for users to know which dependencies are required.                  |
| @source        | Specifies the source of the code. This can be useful for giving credit or referencing the origin of the code.                                                           |
| @references    | Provides references or citations related to the code. This is especially important for academic or research-oriented code.                                              |
| @export        | Indicates that a particular function or object should be exported when the package is loaded. This is essential for package development.                                |
| @keywords      | Specifies keywords related to the code. This can aid in searching and categorizing the code.                                                                            |
| @inheritParams | Indicates that the documented function inherits parameters from another function. This can be useful when functions share similar parameter sets.                       |

## 3.1 Navigate to functions

Navigate to the following directory `./R/functions.R` within the R
package you just created.

## 3.2 Document your functions

Document these functions by adding roxygen tags (@param, @return,
@examples, @export, @details, @description, @name) to each function.

To quickly add the roxygen skeleton, put the pointer within a function
and then:

  - Use the shortcut <kbd>option/alt</kbd> + <kbd>shift</kbd> +
    <kbd>command/ctrl</kbd> + <kbd>R</kbd>.
  - Navigate to `Code -> Insert Roxygen Skeleton` in the RStudio menu.

<!-- end list -->

``` r
#' @Title C_to_F
#'
#' @param C_temp 
#'
#' @return 
#'
#' @export
#'
#' @examples
#' # Convert Celcius to Farenheit
#' F <- C_to_F(20)
#'
#' # Convert Celcius to Farenheit, but avoid running it for tests
#' \dontrun {
#' F <- C_to_F(20)
#' }
#' 
#'
C_to_F <- function(C_temp){
    F_temp <- (C_temp * 9/5) + 32;
    return(F_temp);
}
```

-----

**NOTE**

The `\dontrun` tag is useful when an example should not be automatically
executed. This can be necessary for examples that may have side effects,
such as downloading large datasets or creating time-consuming
computations. How to Use not run: simply include `\dontrun{}` in the
example you want to exclude from automatic execution.

-----

## 3.3 Document package

The function `document()` will automatically create the documentation of
the function.

  - Execute `devtools::document()` in the R console.
  - Use the shortcut <kbd>command/ctrl</kbd> + <kbd>shift</kbd> +
    <kbd>B</kbd>.

<!-- end list -->

``` r
devtools::document()
```

Finally, use `load_all()` to reload your package locally

``` r
devtools::load_all()
```

If you inspect the function F\_to\_C you will see that documentation is
now available.

``` r
?C_to_F
```

-----

## 3.4 Exercise

``` 
We have now documented the function C_to_F by adding the roxygen tags. 
Use the same approach to document the F_to_C function.     
```

-----

<!-- # <a name="data"></a> -->

# 4 Add Data

Adding data to your package enhances its functionality and ensures that
users have access to essential datasets. The `use_data()` and
`use_data_raw()` functions simplify the workflow of saving package data
in the correct format. Also for data sets various Roxygen tags can be
used to add documentation. Follow these steps to include datasets in
your package:

## 4.1 Create data-raw directory

The `use_data_raw()` function sets up a directory named `data-raw` and
includes a template R-script, `DATASET.R`. This directory could also be
used to add your original datasets.

``` r
usethis::use_data_raw() 
```

## 4.2 Navigate to DATASET.R

Go to the `data-raw` directory and open the script `DATASET.R`.

## 4.3 Edit DATASET.R

Edit `DATASET.R` to load and format the dataset, saving it as a suitable
.rda file using the `usethis::use_data()` function.

``` r
# example of a created dataset 
date <- as.Date('2023-09-01')
timestamp <- seq(date,date + 30,1)
celcius <- sample(seq(10,20,0.1),length(timestamp))
temperatures <- data.frame(timestamp=timestamp,celcius=celcius)

# create a data directory and store the rda file with use_data()
usethis::use_data(temperatures, overwrite = TRUE)
```

## 4.4 Document your dataset

In the `R/` directory, document your dataset using Roxygen tags. Include
essential information such as @name, @description, @format, @source, and
variable details. Good practice is to create an R script named `data` in
which you document your datasets.

``` r
# example 
#' name Prices of 50,000 round cut diamonds.
#'
#' A dataset containing the prices and other attributes of almost 54,000
#' diamonds.
#'
#' @format A data frame with 53940 rows and 10 variables:
#' \describe{
#'   \item{price}{price, in US dollars}
#'   \item{carat}{weight of the diamond, in carats}
#' }
#' @source \url{http://www.diamondse.info/}
diamonds 
```

-----

## 4.5 Exercise

    Document above created `temperatures` data frame using the Roxygen-tags: 
    @name, @description, @format and @source. 
    
    Make sure to describe each column of the data frame. 

-----

<!-- # <a name="vignettes"></a> -->

# 5 Add Vignettes

It is a good idea to add extra detailed documentation of the usage of
the R package as vignettes. Vignettes are in essence R markdown files
with a specific header. To extend your R package with vignettes use the
function below.

``` r
usethis::use_vignette("test") 
```

<!-- # <a name="build"></a> -->

# 6 Build

Once your package is ready, you can build your package using
`devtools::build()` which will create a tarball (a compressed archive)
of your package in the `./pkg/` directory.

Before building, it’s a good idea to check your package for common
issues using `devtools::check()`. The latter function performs a series
of checks to ensure that your package meets certain standards and is
ready for distribution. These checks help ensure the overall quality,
consistency, and compliance of your R package with best practices and
standards. It’s recommended to address any issues reported during the
`devtools::check()` process before submitting your package to CRAN or
sharing it with others.

Here are some of the key checks that `devtools::check()` performs:

| check                         | description                                                                                                                                                                                                                                     |
| :---------------------------- | :---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| R CMD check                   | This is a comprehensive set of checks performed by the R CMD check command. It includes various sub-checks for code syntax, documentation, and package structure. It ensures that your package adheres to the standards set by the R community. |
| R CMD build                   | Checks are made to ensure that your package can be successfully built into a tarball (compressed archive).                                                                                                                                      |
| R CMD INSTALL                 | Installs your package locally to check for installation issues.                                                                                                                                                                                 |
| Package dependencies          | Checks that the dependencies declared in the DESCRIPTION file are available and can be installed.                                                                                                                                               |
| CRAN checks                   | Checks specific to CRAN (Comprehensive R Archive Network) submission requirements. These include checks for package licensing, proper use of URLs, and other guidelines specified by CRAN.                                                      |
| Namespace checks              | Verifies that your package namespace is properly defined and does not have any conflicts.                                                                                                                                                       |
| Code style and best practices | Checks for adherence to coding style conventions, as recommended by the R community.                                                                                                                                                            |
| Documentation checks          | Verifies that the documentation is correctly formatted and that all exported functions are documented.                                                                                                                                          |
| Examples checks               | Runs examples provided in the documentation to ensure they work as intended.                                                                                                                                                                    |
| Vignette checks               | If your package includes vignettes, it checks that they can be built without errors.                                                                                                                                                            |
| Unit tests                    | If you have unit tests in your package, they are executed to ensure that your functions work as expected.                                                                                                                                       |
| License checks                | Verifies that your package has a valid license specified in the DESCRIPTION file.                                                                                                                                                               |
| Encoding checks               | Checks that your source code files use a consistent and valid character encoding.                                                                                                                                                               |

## 6.1 Check Your Package

Check makes a list of checks to test the validity of your package. Use
one of the following approaches to run the checks:

  - Execute `devtools::check()` in the R console.
  - Use the shortcut <kbd>shift</kbd> + <kbd>command/ctrl</kbd> +
    <kbd>E</kbd>.
  - Navigate to `Build -> Check Package` in the RStudio menu.
  - Navigate to the `Build` panel and click `Check` in upper-right panel

<!-- end list -->

``` r
devtools::check()
```

Address any issues that arise during the checking process.

## 6.2 Build Your Package

Once your package is ready, you can build your package. Use one of the
following approaches:

  - Execute `devtools::build()` in the R console.
  - Execute `R CMD build YourPackageName` from the directory in which
    your package is stored, and `YourPackageName` is the R Package
    directory name.
  - Use the shortcut <kbd>command/ctrl</kbd> + <kbd>shift</kbd> +
    <kbd>B</kbd>
  - Navigate to `Build -> Build Package` in the RStudio menu.

<!-- end list -->

``` r
devtools::build()
```

This will create a tarball (a compressed archive) of your package in the
./pkg/ directory.

## 6.3 Install and Load Your Package

You can install your package locally for testing using:

``` r
install.packages("path/to/YourPackageName_x.y.z.tar.gz", repos = NULL, type = "source")
```

Replace “path/to/YourPackageName\_x.y.z.tar.gz” with the actual path to
your package tarball.

## 6.4 Buildignore

To ignore including certain files or directories modify the buildignore
file. This will exclude specific directories when building your package.
For instance, you might want to ignore the raw-data directory, since you
will not need it for the functioning of your R package.

``` r
usethis::use_build_ignore(c("yourfolder1", "yourfolder2", "yourfile"))
```

## 6.5 Exercise

-----

    1. Adjust the buildignore file and add the raw-data directory
    2. Exclude any other directory that is not necessary 
    3. perform checks and correct issues
    4. build package and search for the zipped file
    5. install package 

-----

<!-- # <a name="GIT"></a> -->

# 7 Git

Imagine you have a piece of code, and you’re keen on tracking its
changes without losing the original version. The conventional method
involves saving scripts as new files, often labeled with indicators like
‘v0’ or a timestamp. Git offers a more seamless way to version your code
without the hassle of managing different version files manually. It not
only tracks changes made to your files but also equips you with tools to
document those changes. While Git’s initial development focused on code
versioning, it’s versatile enough to handle smaller datasets. GitHub and
GitLab support various text file formats (e.g., csv, fasta), making them
ideal for versioning.

This section unfolds a step-by-step guide to (1) initiate a new project
on GitHub or GitLab, (2) integrate it with your RStudio, and (3) employ
basic git commands for effective version control. Although the example
uses GitHub, the process is nearly identical for GitLab.

## 7.1 Create a New Project on GitHub/GitLab

Navigate to the GitHub or GitLab website and create a new project with a
given name (`YourPackageName`). Include a README file during the
initialization process and specify other optional settings
(public/private, licensing, description).

![New Repository](./fig/GITHUB.png) ![Create
Repository](./fig/CreateRepo.png)

## 7.2 Copy the Repository Link

Copy the HTTP link of your repository
`https://github.com/<YourAccount>/<YourPackageName>.git` as shown in the
figure below.

![Copy Repository](./fig/copyrepo.png)

## 7.3 Set Up the Project in RStudio

Open RStudio and choose `File -> New Project -> Version Control -> Git`.
Paste the Repository URL and specify the Project directory name
(`YourPackageName`).

![Copy Repository](./fig/clonegitreporstudio.png)

## 7.4 Modify gitignore file

Once you created a git project a file that is automatically created is
the `.gitignore` in the root directory of your project. This is a file
in which you can specify which files and directories that should be
ignored and thus should not be versioned or hosted in Github or Gitlab.

## 7.5 Make Changes, Commit and Push

Once you have cloned the git repository you have the tools to version
the files in your R package. To test this we can make changes into the
`README` file and submit them to github/gitlab from within RStudio.
There are several ways to submit changes in RStudio:

  - Use the shortcut <kbd>command/ctrl</kbd> + <kbd>option/alt</kbd> +
    <kbd>M</kbd>
  - Navigate to `Tools -> Version Control -> Commit` in the RStudio
    menu.
  - Navigate to the `Git` in upper-right panel in RStudio and click the
    `Commit` button.

A new window pops up in which you:

  - Select the files to which you want to add the specific commit
    message.
  - Add a message to describe the changes.
  - Click `Commit` to submit the changes to Git.
  - Click `Push` to push the committed changes to the git repository.

Git can also be used from the terminal:

``` shell
git add <filename>
git commit -m "commit message"
git push <branchname>
```

**NOTE:** It is recommended to have pushed your changes by the end of
the day, or when you stop working on a project. Before you start, the
next day/moment/moment always make sure to first `pull`, to fetch
changes made in GitHub or GitLab. Like that you ensure that both the
online and local version remain synchronized.

**Gitignore:**

-----

## 7.6 Exercise

<div style="background-color: #f0f0f0; padding: 10px;">

1.  Create a git repository in github/gitlab
2.  Clone it locally
3.  Create the R package as in [section
    2](#2-creating-a-basic-r-package)
4.  Commit and Push the R package
5.  Check your git-repository in github/gitlab
6.  Document your package as in [section 3](#3-document-with-roxygen)
7.  Commit and Push the documented R package

</div>

-----

<!-- # <a name="www"></a> -->

# 8 Building a website

In this section, you’ll learn how to create a YAML configuration file
(\_pkgdown.yml) for your R package using usethis::use\_pkgdown(). We’ll
also cover the importance of YAML files and the steps to build and view
your package website.

## 8.1 Create YAML Configuration

Run the following command to create the \_pkgdown.yml file:

``` r
usethis::use_pkgdown()
```

This command creates a basic YAML configuration file in your package
directory.

## 8.2 Edit the \_pkgdown.yml File

Open the generated \_pkgdown.yml file and customize it according to your
preferences. This file contains settings for your package website,
including the destination, URL, and navigation bar.

Example \_pkgdown.yml:

``` yml
destination: public
url: https://<USERNAME>.gitlab.io/<REPOSITORYNAME>/
development:
  mode: auto

navbar:
  right:
    - icon: fa-gitlab
      href: https://gitlab.com/<USERNAME>/<REPOSITORYNAME>
```

Adjust the destination and url fields with your GitLab or github
username and repository name.

## 8.3 Build Your Package Website

Ensure your package has a DESCRIPTION file and a README file. If not,
run:

    usethis::use_description() 
    usethis::use_readme_rmd()

Then, generate your package website using:

``` r
pkgdown::build_site()
```

This command creates a `docs/` directory containing HTML files for your
website.

## 8.4 Commit Changes to Git

Before building the website, commit the changes to your Git repository:

``` r
usethis::use_git()
usethis::use_git_commit(message = "Add pkgdown configuration and setup")
```

Alternatively, commit using the approach as described in the GIT
section.

## 8.5 Activate Pages on GitHub and GitLab

### 8.5.1 GitHub Pages Activation

    Go to your GitHub repository.
    Navigate to the "Settings" tab.
    Scroll down to the "GitHub Pages" section.
    Set the "Source" branch to main or master (whichever branch you are using).
    Confirm the activation.

### 8.5.2 GitLab Pages Activation

The activation process for GitLab Pages can vary based on your GitLab
instance and permissions. Typically, it involves:

    Go to your GitLab repository.
    Navigate to the "Settings" or "CI / CD" section.
    Look for "Pages" settings.
    Configure the Pages settings, including the source branch.

Please refer to the specific documentation of your GitLab instance for
detailed instructions.

## 8.6 View Your Package Website

After building the site, your package website will be available at the
following link:

``` php
https://<USERNAME>.github.io/<REPOSITORYNAME>/
```

Replace <USERNAME> and <REPOSITORYNAME> with your GitHub username and
repository name.

<!-- # <a name="LFS"></a> -->

# 9 Large File Support

Large file support comes in handy if you would like to include large
files in your package without versioning. This means that every time a
LFS-object is changed, a new version is uploaded without tracking
previous changes. To allow LFS navigate to
([https://git-lfs.com/)\\\[https://git-lfs.com/\\](https://git-lfs.com/\)\\%5Bhttps://git-lfs.com/\\)\]
to download and install the git LFS extension.

## 9.1 Set up LFS

Once downloaded and installed, set up Git LFS for your user account by
running:

    git lfs install

You only need to run this once per user account.

## 9.2 Select file types

In each Git repository where you want to use Git LFS, select the file
types you’d like Git LFS to manage (or directly edit your
.gitattributes). You can configure additional file extensions at
anytime.

    git lfs track "*.html"

## 9.3 Check .gitattributes

Now make sure .gitattributes is tracked:

    git add .gitattributes

<!-- # <a name="shortcuts"></a> -->

# 10 Shortcuts

| MacOS / Windows                                                                   | R command             | Rstudio Menu                         |
| :-------------------------------------------------------------------------------- | :-------------------- | :----------------------------------- |
| <kbd>command/ctrl</kbd> + <kbd>shift</kbd> + <kbd>E</kbd>                         | devtools::check()     | build -\> Check Package              |
| <kbd>command/ctrl</kbd> + <kbd>shift</kbd> + <kbd>B</kbd>                         | devtools::build()     | build -\> Build Source Package       |
| <kbd>command/ctrl</kbd> + <kbd>shift</kbd> + <kbd>L</kbd>                         | devtools::load\_all() | build -\> load all                   |
| <kbd>command/ctrl</kbd> + <kbd>shift</kbd> + <kbd>D</kbd>                         | devtools::document()  |                                      |
| <kbd>command/ctrl</kbd> + <kbd>option/alt</kbd> + <kbd>M</kbd>                    |                       | Tools -\> Version Control -\> Commit |
| <kbd>command/ctrl</kbd> + <kbd>shift</kbd> + <kbd>C</kbd>                         |                       | Code -\> Comment/Uncomment Lines     |
| <kbd>option/alt</kbd> + <kbd>shift</kbd> + <kbd>command/ctrl</kbd> + <kbd>R</kbd> |                       | Code -\> Insert Roxygen Skeleton     |

# 11 EXTRA

## 11.1 todor

``` r
install.packages('todor')
```
