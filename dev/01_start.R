# Building a Prod-Ready, Robust Shiny Application.
# 
# README: each step of the dev files is optional, and you don't have to 
# fill every dev scripts before getting started. 
# 01_start.R should be filled at start. 
# 02_dev.R should be used to keep track of your development during the project.
# 03_deploy.R should be used once you need to deploy your app.
# 
# 
########################################
#### CURRENT FILE: ON START SCRIPT #####
########################################

## Fill the DESCRIPTION ----
## Add meta data about your application
## 
## /!\ Note: if you want to change the name of your app during development, 
## either re-run this function, call golem::set_golem_name(), or don't forget
## to change the name in the app_sys() function in app_config.R /!\
## 
golem::fill_desc(
  pkg_name = "sCRM", # The Name of the package containing the App 
  pkg_title = "A Shiny App for a stochastic Collision Risk Model (sCRM) or seabirds", # The Title of the package containing the App 
  pkg_description = paste("A Shiny App for a stochastic Collision Risk Model (sCRM) for seabirds.",
                          "CRMs are used to understand potential wind farm effects on seabirds",
                          "by estimating collision mortality. This Shiny app provides an user interface",
                          "for the stochastic version of the Band (2012) offshore CRM, based on an updated,",
                          "and streamlined, version of Masden's (2015) R program. sCRM allows for uncertainty/variability",
                          "in input parameters to be propagated to predicted collision numbers."), # The Description of the package containing the App 
  author_first_name = "Bruno", # Your First Name
  author_last_name = "Caneco", # Your Last Name
  author_email = "bruno@dmpstats.com", # Your Email
  repo_url = "https://github.com/dmpstats/sCRM" # The URL of the GitHub Repo (optional) 
)     

## Set {golem} options ----
golem::set_golem_options()

## Create Common Files ----
## See ?usethis for more information
usethis::use_mit_license( "Bruno Caneco" )  # You can set another license here
usethis::use_readme_rmd( open = FALSE )
usethis::use_code_of_conduct()
usethis::use_lifecycle_badge( "Experimental" )
usethis::use_news_md( open = FALSE )

## Use git ----
usethis::use_git()

## Init Testing Infrastructure ----
## Create a template for tests
golem::use_recommended_tests()

## Use Recommended Packages ----
golem::use_recommended_deps()

## Favicon ----
# If you want to change the favicon (default is golem's one)
golem::use_favicon(path = "inst/app/www/hexSticker_scrm.png") # path = "path/to/ico". Can be an online file. 
golem::remove_favicon()

## Add helper functions ----
golem::use_utils_ui()
golem::use_utils_server()

## Add options to projects' R profile (e.g to open in a different browser) 
usethis::edit_r_profile(scope = "project")


# You're now set! ----

# go to dev/02_dev.R
rstudioapi::navigateToFile( "dev/02_dev.R" )

