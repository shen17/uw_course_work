# Assignment 2: Foundational Skills
#
# Before you get started:
# - Set your working directory to "source file location" using the Session menu
# - Run the following line of code to delete all variables in your workspace
#     (This will make it easier to test your script)
rm(list = ls())



### Set Up and Defining Variables #############################################

# Load the `stringr` package (install it if you haven't used it before)
# It has a variety of functions that make working with string variables easier

library(stringr)


# Create a variable `my_age` that is equal to your age

my_age <- 20


# Create a variable `my_name` that is equal to your first name

my_name <- "Cj"

# Using a mutiplication expression, create a variable `minutes_in_a_day` that
# is equal to the number of minutes in a day

minutes_in_a_day <- 60 * 24

# Using a multiplication expression, create a variable `hours_in_a_year` that
# is equal to the number of hours in a year

hours_in_a_year <- 365 * 24


# Create a variable `more_minutes_than_hours` that is a boolean (TRUE/FALSE)
# It should be TRUE if there are more minutes/day than hours/year
# Otherwise, it should be FALSE

more_minutes_than_hours <- minutes_in_a_day > hours_in_a_year



### Working with Functions ####################################################

# Write a function named `make_introduction()` that takes in
# two arguments called `name` and `age`
# This function should return a string value equal to
# "Hello, my name is {name}, and I'm {age} years old." but {name} and {age}
# should take on the values passed to the function
# Make sure that proper spacing is used (e.g., you shouldn't have multiple
# spaces between words, and you should have a space after a comma)
# Hint: Google search for "R paste paste0 difference"
#       Try reading a few pages to understand how to use each

make_introduction <- function(name, age) {
  paste("Hello, my name is", my_name, "and I'm", my_age, "years old.")
}


# Create a variable `my_intro` by passing your variables `my_name` and `my_age`
# into your `make_introduction()` function

my_intro <- make_introduction(my_name, my_age)


# Create a variable `casual_intro` by substituting "Hello, my name is",
# with "Hey, I'm" in your `my_intro` variable

casual_intro <- gsub("Hello, my name is", "Hey, I'm", my_intro)


# Create a variable `loud_intro`, which is `my_intro` in all upper-case letters
# You should do this by using a function to convert your `my_intro` variable
# into all capital letters

loud_intro <- toupper(my_intro)


# Create a variable `quiet_intro`, which is `my_intro` in all lower-case letters
# You should do this by using a function to convert your `my_intro` variable
# into all lower-case letters

quiet_intro <- tolower(my_intro)

# Create a new variable `capitalized_intro`, which is your `my_intro` variable
# but with each word capitalized
# Hint: Google search the stringr function `str_to_title`

capitalized_intro <- str_to_upper(my_intro)



# Using the `str_count` function from stringr, create a variable `occurrences`
# that stores the # of times the letter "e" appears in `my_intro`

occurrences <- str_count(my_intro, "e")

# Write a function `double()` that takes in a value and
# returns that value multiplied by 2

double <- function(x) {
  value <- x * 2
  return(value)
}



# Using your `double()` function, create a variable `minutes_in_two_days`,
# which is the number of minutes in two days

minutes_in_two_days <- double(minutes_in_a_day)

# Write a function `cube()` that takes in a value and returns that value cubed

cube <- function(x) {
  value <- x * x * x
  return(value)
}


# Create a variable `twenty_seven` by passing 3 to your `cube()` function

twenty_seven <- cube(3)


# Create a function `inches_to_cm` that converts from inches to centimeters

inches_to_cm <- function(inches) {
  centimeters <- inches * 2.54
  return(centimeters)
}


# Create a variable `inches_tall` that is your (numeric) height in inches

inches_tall <- 67

# Using your `inches_to_cm` function and your `inches_tall` variable,
# create a variable `cm_tall` that is your height in centimeters

cm_tall <- inches_to_cm(inches_tall)


# Write a function `has_more_zs` to determine which of two strings contains
# more instances of the letter "z". It should take as parameters two string
# variables and return the argument which has more occurrences of "z"
# If neither phrase contains the letter "z", it should return:
# "Neither string contains the letter z."
# If the phrases contain the same number of "z"s, it should return:
# "The strings have the same number of Zs."
# The function must work for both capital and lowercase "z"s.

has_more_zs <- function(str1, str2) {
  one <- str_count(str1, "z") + str_count(str1, "Z")
  two <- str_count(str2, "z") + str_count(str2, "Z")
  if (one > two) {
    return(str1)
  } else if (one < two) {
    return(str2)
  } else if (one == 0 && two == 0) {
    return("Neither string contains the letter z.")
  } else {
    return("The strings have the same number of Zs.")
  }
}


# Create a variable `more_zs` by passing two strings of your choice to your
# `has_more_zs` function

more_zs <- has_more_zs("Zebra", "zoozoo")


# Write a function `remove_digits` that will remove all digits
# (i.e., 0 through 9) from all elements in a *vector of strings*.
remove_digits <- function(vec) {
  gsub("[0-9]", replacement = "", vec)
}

# Demonstrate that your approach is successful by passing a vector of courses
# to your function. For example, remove_digits(c("INFO 201", "CSE 142"))

remove_digits(c("INFO 201", "CSE 142"))

### Vectors ###################################################################

# Create a vector `movies` that contains the names of six movies you like

movies <- c("frozen", "hop", "cars", "aladdin", "thor", "hook")

# Create a vector `top_three` that only contains the first three movies of
# your `movies` list (e.g., index 1 through index 3)
# You should do this by subsetting the vector, do not just retype the movies

top_three <- movies[1:3]


# Using your vector and the `paste()` method, create a vector `excited` that
# adds the phrase " is a great movie!" to the end of each element in `movies`

excited <- paste(movies, " is a great movie!")

# Create a vector `without_four` that omits the fourth element from `movies`
# You should do this by using a _negative index_

without_four <- movies[-4]


# Create a vector `multiples_of_4` that is every number divisible by 4
# between 4 and 400 (**2 points**)

multiples_of_4 <- seq(4, 400, 4)


# Create a vector `multiples_of_8` by filtering your `multiples_of_4` variable
# down to only elements that are divisible by 8.
# Hints:
# - See chapter 7.4 in the book for vector filtering
# - Google search "modulo operator in R"

multiples_of_8 <- multiples_of_4[multiples_of_4 %% 8 == 0]



# Create a vector `numbers` that is the numbers 700 through 999

numbers <- 700:999


# Using the built in `length()` function, create a variable `numbers_len`
# that is equal to the length of the vector `numbers`

numbers_len <- length(numbers)




# Using the `mean()` function, create a variable `numbers_mean` that is
# equal to the mean of the vector `numbers`

numbers_mean <- mean(numbers)


# Using the `median()` function, create a variable `numbers_median`
# that is the median of the vector `numbers`

numbers_median <- median(numbers)


# Create a vector `lower_numbers` that the values in the `numbers` vector
# that are lower than `numbers_mean`
# Hint: Use vector filtering)

lower_numbers <- numbers[numbers < 849.5]

# Create a vector `higher_numbers` that the values in the `numbers` vector
# that are higher than `numbers_mean`
# Hint: Again, use vector filtering

higher_numbers <- numbers[numbers > 849.5]

### Lists #####################################################################

# Create a list called `summary_info` in which you'll store summary information
# about the `numbers` vector above.
# The list should contain the following _named_ keys:
# - `length`: in which you'll store the length of the vector
# - `mean`: in which you'll store the mean of the vector
# - `median`: in which you'll store the median of the vector

summary_info <- list(length = numbers_len, mean = numbers_mean,
                     median = numbers_median)


# Now, write a function called `summarize_vector` that takes in a vector of
# numbers, and returns a list of summary information about that vector
# (including the mean, median, and length)

summarize_vector <- function(vector_num) {
  mean_vector <- mean(vector_num)
  median_vector <- median(vector_num)
  length_vector <- length(vector_num)
  return(list(mean_vector, median_vector, length_vector))
}


# Create a list `summary_1_to_100` by passing a vector of the values one
# through one hundred to your `summarize_vector` function


### Data Frames ###############################################################

# Create a vector `students` holding 1,000 values representing students
# They should have the values "Student 1", "Student 2",..., "Student 1000"

students <- paste0("Student ", seq(1 : 1000))


# Create a vector `math_grades` that holds 1000 random values in it that
# represent grades in a math course
# These values should be normally distributed with a mean of 88 and a
# standard deviation of 10
# Hint: Lookup `rnorm()`

math_grades <- rnorm(n = 1000, mean = 88, sd = 10)


# In the `math_grades` vector, replace any values that are above 100 with
# the number 100
# Hint: Vector filtering

math_grades[math_grades > 100] <- 100


# Create a vector `spanish_grades` that holds 1000 random values in it that
# represent grades in a spanish course
# These values should be normally distributed with a mean of 85 and a
# standard deviation of 12
# Hint: Lookup `rnorm()`

spanish_grades <- rnorm(n = 1000, mean = 85, sd = 12)



# In the `spanish_grades` vector, replace any values that are above 100 with
# the number 100
# Hint: More vector filtering

spanish_grades[spanish_grades > 100] <- 100

# Create a data frame variable named `grades` by combining
# the vectors `students`, `math_grades`, and `spanish_grades`
# Make sure to properly handle strings

grades <- data.frame(students, math_grades, spanish_grades)


# Create a variable `num_students` that counts the
# number of rows in your dataframe `grades`

num_students <- nrow(grades)


# Create a variable `num_courses` that counts the number of courses stored
# in the columns of your `grades` data frame

num_courses <- ncol(grades - 1)



# Add a new column `grade_diff` to your data frame, which is equal to
# `grades$math_grades` minus `grades$spanish_grades`

grade_diff <- grades$math_grades - grades$spanish_grades
grades$difference_grades <- grade_diff


# Add another column `better_at_math` as a boolean (TRUE/FALSE) variable that
# indicates that a student got a better grade in math

better_at_math <- grades$math_grades > grades$spanish_grades
grades$boolean_grades <- better_at_math



# Create a variable `num_better_at_math` that is the number
# (i.e., one numeric value) of students better at math

better <- grades[grades$boolean_grades == TRUE, ]
num_better_at_math <- nrow(better)