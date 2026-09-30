# DTS 301 — MACHINE LEARNING I
# WEEK 0 — R FOR DATA SCIENCE, DATA MANIPULATION, VISUALIZATION & EDA
# Instructor: Dr. Sakinat Folorunso
# Associate Professor of AI Systems
# Department of Computer Science, Olabisi Onabanjo University (OOU)
# Email: sakinat.folorunso@oouagoiwoye.edu.ng
#
# # Week 0 — Student Guide
#
# ## Purpose
#
# This practical week provides the **R-language pathway** for the foundation of DTS 301.
#
# Before we ask a computer to **learn from data**, we need to be comfortable with:
#
# - R programming;
# - vectors and matrices;
# - data frames;
# - data manipulation;
# - visualization;
# - exploratory data analysis (EDA).
#
# The learning cycle is:
#
# > **Read → Predict → Run → Inspect → Explain → Reflect**
#
# Do not rush through the code. Read the explanation, predict what will happen, run the code, inspect the output, and explain what you observed.
#
# ### Course progression
#
# **Week 0 → R for Data Science & EDA**  
# **Week 1 → Introduction to Machine Learning**  
# **Week 2 → Data Representation, Linear Transformations & Matrix–Vector Operations**
#
# > **Important:** The goal is not simply to make the code run. The goal is to understand what the code is doing and why it matters for machine learning.
#
# DTS 301 — MACHINE LEARNING I
# WEEK 0 — R FOR DATA SCIENCE, DATA MANIPULATION, VISUALIZATION & EDA
# Instructor: Dr. Sakinat Folorunso
# Associate Professor of AI Systems
# Department of Computer Science, Olabisi Onabanjo University (OOU)
# Email: sakinat.folorunso@oouagoiwoye.edu.ng
#
# # 2. R Objects and Data Types
#
# R stores information in objects.
#
# We begin with:
#
# - numeric values;
# - character values;
# - logical values;
# - vectors;
# - basic arithmetic.
#
# The aim is to build enough R fluency to work confidently with data.
#
# ## Worked Example
#

# Store the number 25 in an object called age.
age <- 25

# Display the value stored in age.
print(age)

# Display the data type of age.
print(class(age))

#
# ## Predict
#
# Before running the code:
#
# 1. What will the first output be?
# 2. What type of object is `age`?
#
# ### Explain
#
# In your own words, what is an **object** in R?
#
# DTS 301 — MACHINE LEARNING I
# WEEK 0 — R FOR DATA SCIENCE, DATA MANIPULATION, VISUALIZATION & EDA
# Instructor: Dr. Sakinat Folorunso
# Associate Professor of AI Systems
# Department of Computer Science, Olabisi Onabanjo University (OOU)
# Email: sakinat.folorunso@oouagoiwoye.edu.ng
#
# # 3. Basic Arithmetic in R
#
# R can perform common arithmetic operations.
#
# | Operator | Meaning |
# |:--:|---|
# | `+` | Addition |
# | `-` | Subtraction |
# | `*` | Multiplication |
# | `/` | Division |
# | `^` | Exponentiation |
# | `%%` | Remainder |
#
# These operations form the foundation for numerical data analysis.
#
# ## Worked Example
#

# Store the first test score.
test_1 <- 72

# Store the second test score.
test_2 <- 84

# Add the two scores.
total <- test_1 + test_2

# Calculate the average score.
average <- total / 2

# Display the total score.
print(total)

# Display the average score.
print(average)

#
# ## Do It Yourself
#
# Create three variables representing three assessment scores.
#
# Calculate:
#
# - the total;
# - the mean;
# - the difference between the highest and lowest score.
#
# **Challenge:** Change the values and observe how the results change.
#

# Store your first assessment score.
score_1 <- 70

# Store your second assessment score.
score_2 <- 80

# Store your third assessment score.
score_3 <- 90

# Calculate the total of the three scores.
total_score <- score_1 + score_2 + score_3

# Calculate the mean of the three scores.
mean_score <- total_score / 3

# Find the difference between the largest and smallest score.
score_range <- max(score_1, score_2, score_3) - min(score_1, score_2, score_3)

# Display the total.
print(total_score)

# Display the mean.
print(mean_score)

# Display the range.
print(score_range)

#
# DTS 301 — MACHINE LEARNING I
# WEEK 0 — R FOR DATA SCIENCE, DATA MANIPULATION, VISUALIZATION & EDA
# Instructor: Dr. Sakinat Folorunso
# Associate Professor of AI Systems
# Department of Computer Science, Olabisi Onabanjo University (OOU)
# Email: sakinat.folorunso@oouagoiwoye.edu.ng
#
# # 5. Matrices in R
#
# A matrix is a two-dimensional numerical structure arranged into rows and columns.
#
# Matrices are especially important in machine learning because datasets are often represented as:
#
# - rows = observations;
# - columns = features.
#
# This idea will become central in Week 2.
#
# ## Worked Example
#

# Create a matrix with three observations and four features.
X <- matrix(
  c(80, 75, 90, 85,
    60, 65, 70, 68,
    92, 88, 95, 90),
  nrow = 3,
  byrow = TRUE
)

# Display the matrix.
print(X)

# Display the dimensions of the matrix.
print(dim(X))

# Display the number of rows.
print(nrow(X))

# Display the number of columns.
print(ncol(X))

#
# ## Understanding Dimensions
#
# If a matrix has dimensions:
#
# ```text
# 3 × 4
# ```
#
# that means:
#
# - 3 rows;
# - 4 columns.
#
# In a machine-learning dataset, this could represent:
#
# > **3 observations described by 4 features.**
#
# ## Indexing a Matrix
#

# Display the first row of X.
print(X[1, ])

# Display the second row of X.
print(X[2, ])

# Display the first column of X.
print(X[, 1])

# Display the value in the first row and first column.
print(X[1, 1])

# Display the first two rows and first two columns.
print(X[1:2, 1:2])

#
# DTS 301 — MACHINE LEARNING I
# WEEK 0 — R FOR DATA SCIENCE, DATA MANIPULATION, VISUALIZATION & EDA
# Instructor: Dr. Sakinat Folorunso
# Associate Professor of AI Systems
# Department of Computer Science, Olabisi Onabanjo University (OOU)
# Email: sakinat.folorunso@oouagoiwoye.edu.ng
#
# # 7. Creating a Data Frame
#
# We can represent several student observations as a data frame.
#
# Think of:
#
# - each row as an observation;
# - each column as a variable;
# - some variables as possible features;
# - one variable as a possible target.
#
# This is the bridge from programming to data analysis.
#

# Create a data frame containing student information.
df <- data.frame(
  student = c("Amina", "Bola", "Chidi", "David", "Efe"),
  attendance = c(85, 70, 92, 60, 78),
  test_score = c(78, 65, 88, 55, 72),
  final_score = c(82, 68, 91, 58, 75)
)

# Display the complete data frame.
print(df)

#
# DTS 301 — MACHINE LEARNING I
# WEEK 0 — R FOR DATA SCIENCE, DATA MANIPULATION, VISUALIZATION & EDA
# Instructor: Dr. Sakinat Folorunso
# Associate Professor of AI Systems
# Department of Computer Science, Olabisi Onabanjo University (OOU)
# Email: sakinat.folorunso@oouagoiwoye.edu.ng
#
# # 9. Selecting Columns and Rows
#
# R allows us to select particular variables and observations.
#
# A column can be selected using:
#
# ```r
# df$attendance
# ```
#
# or:
#
# ```r
# df[["attendance"]]
# ```
#
# Rows can be filtered using logical conditions.
#
# This becomes important when exploring subsets of a dataset.
#

# Select the attendance column.
attendance <- df$attendance

# Display the attendance values.
print(attendance)

# Select the attendance and final score columns.
selected_columns <- df[, c("attendance", "final_score")]

# Display the selected columns.
print(selected_columns)

# Select students whose attendance is at least 80.
high_attendance <- df[df$attendance >= 80, ]

# Display the filtered observations.
print(high_attendance)

#
# DTS 301 — MACHINE LEARNING I
# WEEK 0 — R FOR DATA SCIENCE, DATA MANIPULATION, VISUALIZATION & EDA
# Instructor: Dr. Sakinat Folorunso
# Associate Professor of AI Systems
# Department of Computer Science, Olabisi Onabanjo University (OOU)
# Email: sakinat.folorunso@oouagoiwoye.edu.ng
#
# # 11. Missing Data
#
# Real datasets are rarely perfect.
#
# Common problems include:
#
# - missing values;
# - inconsistent entries;
# - duplicated observations;
# - incorrect data types;
# - unusual values.
#
# A missing value in R is usually represented as `NA`.
#
# Before modelling, we need to detect and investigate missing values.
#

# Create a data frame containing one missing test score.
missing_data <- data.frame(
  student = c("Amina", "Bola", "Chidi"),
  test_score = c(78, NA, 88),
  final_score = c(82, 68, 91)
)

# Display the data frame containing the missing value.
print(missing_data)

# Count missing values in each column.
print(colSums(is.na(missing_data)))

#
# ## Handling Missing Values
#
# There is no universally correct way to handle missing data.
#
# Possible approaches include:
#
# - removing observations;
# - removing variables;
# - imputing missing values;
# - investigating why the values are missing.
#
# The correct approach depends on the context and modelling task.
#
# For now, the important skill is to **detect missingness before modelling**.
#

# Calculate the mean of the available test scores while ignoring the missing value.
mean_test_score <- mean(missing_data$test_score, na.rm = TRUE)

# Replace the missing test score with the calculated mean.
missing_data$test_score[is.na(missing_data$test_score)] <- mean_test_score

# Display the completed data frame.
print(missing_data)

#
# ### Important Question
#
# Is replacing a missing value with the mean **always** appropriate?
#
# No.
#
# Before choosing a method, ask:
#
# - Why is the value missing?
# - How much data is missing?
# - Could missingness itself contain information?
# - Could the method introduce bias?
# - Is the information available legitimately?
#
# This is part of responsible data analysis.
#
# DTS 301 — MACHINE LEARNING I
# WEEK 0 — R FOR DATA SCIENCE, DATA MANIPULATION, VISUALIZATION & EDA
# Instructor: Dr. Sakinat Folorunso
# Associate Professor of AI Systems
# Department of Computer Science, Olabisi Onabanjo University (OOU)
# Email: sakinat.folorunso@oouagoiwoye.edu.ng
#
# # 13. Correlation
#
# Correlation measures the strength and direction of a **linear relationship** between numerical variables.
#
# A correlation coefficient is commonly represented by:
#
# $$r \in [-1,1]$$
#
# Very roughly:
#
# - values near `+1` indicate a strong positive linear relationship;
# - values near `-1` indicate a strong negative linear relationship;
# - values near `0` indicate little linear relationship.
#
# Correlation does **not** establish causation.
#

# Calculate the correlation coefficient between study hours and examination scores.
correlation <- cor(study_hours, exam_scores)

# Display the correlation coefficient.
print(correlation)

#
# ## Explain
#
# In one or two sentences:
#
# > What does the correlation value tell you about these two variables?
#
# Then answer:
#
# > Does the correlation prove that increasing study hours causes examination scores to increase?
#
# Explain why or why not.
#
# DTS 301 — MACHINE LEARNING I
# WEEK 0 — R FOR DATA SCIENCE, DATA MANIPULATION, VISUALIZATION & EDA
# Instructor: Dr. Sakinat Folorunso
# Associate Professor of AI Systems
# Department of Computer Science, Olabisi Onabanjo University (OOU)
# Email: sakinat.folorunso@oouagoiwoye.edu.ng
#
# # 15. LAB TASK — Student Performance EDA
#
# ## Scenario
#
# You are given a small dataset containing information about students.
#
# Your task is to conduct a basic exploratory analysis before any machine-learning model is considered.
#
# ### Objectives
#
# You should be able to:
#
# 1. inspect the dataset;
# 2. identify observations and variables;
# 3. identify possible features and a target;
# 4. check the data structure;
# 5. check missing values;
# 6. calculate descriptive statistics;
# 7. create at least two visualisations;
# 8. examine relationships between numerical variables;
# 9. communicate at least five findings.
#
# ### Important
#
# Do not begin by asking:
#
# > **“Which machine-learning algorithm should I use?”**
#
# Begin by asking:
#
# > **“What does this dataset contain, and what can I learn from it?”**
#
# ## Lab Dataset
#

# Create a student-performance dataset for the laboratory exercise.
lab_data <- data.frame(
  study_hours = c(2, 4, 5, 6, 7, 8, 3, 9, 10, 5, 6, 8),
  attendance = c(60, 72, 75, 80, 85, 90, 65, 92, 95, 78, 82, 88),
  assignment_score = c(55, 65, 70, 74, 80, 85, 60, 88, 92, 72, 76, 84),
  exam_score = c(50, 62, 68, 73, 79, 84, 57, 87, 91, 70, 75, 82)
)

# Display the first five observations.
print(head(lab_data))

# Display the number of observations and variables.
print(dim(lab_data))

# Display the data structure.
str(lab_data)

# Display descriptive statistics.
print(summary(lab_data))

# Display the number of missing values in each variable.
print(colSums(is.na(lab_data)))

#
# ## Lab Task A — Inspect
#
# Answer:
#
# 1. What does one row represent?
# 2. How many observations are there?
# 3. How many variables are there?
# 4. Which variable could be the target if the goal is to predict examination performance?
# 5. Which variables could be features?
#
# ## Lab Task B — Visualise
#
# Create your own:
#
# 1. scatter plot of `study_hours` against `exam_score`;
# 2. scatter plot of `attendance` against `exam_score`;
# 3. boxplot of `exam_score`.
#
# For each plot, write **one sentence explaining what you observe**.
#
# ### Starting point: Study Hours vs Exam Score
#

# Create a scatter plot of study hours against examination score.
plot(lab_data$study_hours,
     lab_data$exam_score,
     main = "Study Hours vs Exam Score",
     xlab = "Study Hours",
     ylab = "Exam Score")

#
# ### Starting point: Attendance vs Exam Score
#

# Create a scatter plot of attendance against examination score.
plot(lab_data$attendance,
     lab_data$exam_score,
     main = "Attendance vs Exam Score",
     xlab = "Attendance",
     ylab = "Exam Score")

#
# ### Starting point: Exam Score Boxplot
#

# Create a boxplot of examination scores.
boxplot(lab_data$exam_score,
        main = "Exam Score Distribution",
        ylab = "Exam Score")

#
# ### Correlation Matrix
#

# Calculate the correlation matrix for the numerical variables.
correlation_matrix <- cor(lab_data)

# Display the correlation matrix.
print(correlation_matrix)

#
# ## Lab Task C — Interpret
#
# Using the correlation matrix and plots:
#
# - Which pair of variables appears most strongly related?
# - Which relationship appears weakest?
# - Do any observations look unusual?
# - Are there missing values?
# - What additional information would you want before building a model?
#
# ### Lab conclusion
#
# Write a short paragraph answering:
#
# > **What did the EDA tell you that you would not have known from simply looking at the raw table?**
#
# DTS 301 — MACHINE LEARNING I
# WEEK 0 — R FOR DATA SCIENCE, DATA MANIPULATION, VISUALIZATION & EDA
# Instructor: Dr. Sakinat Folorunso
# Associate Professor of AI Systems
# Department of Computer Science, Olabisi Onabanjo University (OOU)
# Email: sakinat.folorunso@oouagoiwoye.edu.ng
#
# # 17. WEEK 0 REFLECTION
#
# Take a few minutes to answer these questions honestly.
#
# ## Conceptual Understanding
#
# 1. What is the difference between an R vector and an R matrix?
# 2. What does the `dim()` function tell us?
# 3. What is a data frame?
# 4. Why do we inspect a dataset before modelling?
# 5. What is exploratory data analysis?
# 6. Why are visualisations useful?
# 7. What is correlation?
# 8. Why does correlation not automatically imply causation?
#
# ## Practical Confidence
#
# Rate yourself from **1–5**:
#
# | Skill | Rating |
# |---|---:|
# | R objects and data types | |
# | Vectors | |
# | Matrices | |
# | Lists | |
# | Data frames | |
# | Selecting and filtering data | |
# | Creating new variables | |
# | Descriptive statistics | |
# | Handling missing values | |
# | Creating plots | |
# | Interpreting plots | |
# | Basic EDA | |
#
# ## Final Reflection
#
# Complete these sentences:
#
# > **One thing I can now do confidently is…**
#
# > **One thing I still need to practise is…**
#
# > **One thing I learned about data that surprised me is…**
#
# > **Before building a machine-learning model, I now know that I should first…**
#
# DTS 301 — MACHINE LEARNING I
# WEEK 0 — R FOR DATA SCIENCE, DATA MANIPULATION, VISUALIZATION & EDA
# Instructor: Dr. Sakinat Folorunso
# Associate Professor of AI Systems
# Department of Computer Science, Olabisi Onabanjo University (OOU)
# Email: sakinat.folorunso@oouagoiwoye.edu.ng
#
# # Bridge to Week 1
#
# You have now learned how to **work with data in R**.
#
# The next question is:
#
# > **How can a computer learn useful patterns from that data?**
#
# That takes us to:
#
# ## Week 1 — Introduction to Machine Learning
#
# We will move from:
#
# **Data → EDA**
#
# to:
#
# **Data → Learning → Model → Prediction**
#
# And we will begin with the most important principle:
#
# > **Problem first. Data second. Algorithm later.**