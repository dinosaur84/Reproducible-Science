## ---------------------------
##
## Script name: cleaning.r
##
## Script purpose: functions to clean the palmer penguins dataset
##
## Author: Candidate no. 1076523
##
## Date Created: 2024-12-09 
##
##
## ---------------------------
##
## Notes:
## 
## 


# Making a function for cleaning up column names to make them machine and human readable 
# by using snake case and lower case
clean_column_names <- function(penguins_data) {
  penguins_data %>%
    clean_names()
}

# Making a function for removing column names, based on a vector of their names
remove_columns <- function(penguins_data, column_names) {
  penguins_data %>%
    select(-starts_with(column_names))
}

# Making a function to shorten species names
shorten_species <- function(penguins_data) {
  penguins_data %>%
    mutate(species = case_when(
      species == "Adelie Penguin (Pygoscelis adeliae)" ~ "Adelie",
      species == "Chinstrap penguin (Pygoscelis antarctica)" ~ "Chinstrap",
      species == "Gentoo penguin (Pygoscelis papua)" ~ "Gentoo"
    ))
}

# Making a function to remove empty rows/columns
remove_empty_columns_rows <- function(penguins_data) {
  penguins_data %>%
    remove_empty(c("rows", "cols"))
}


# Making a function to remove rows containing NA values
remove_NA <- function(penguins_data) {
  penguins_data %>%
    na.omit()
}

##
## ---------------------------