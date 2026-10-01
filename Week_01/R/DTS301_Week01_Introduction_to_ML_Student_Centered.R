# DTS 301 — Machine Learning I
# Week 1: Introduction to Machine Learning
#
# Instructor: Dr. Sakinat Folorunso
# Associate Professor of AI Systems
# Department of Computer Science, Olabisi Onabanjo University
# Email: sakinat.folorunso@oouagoiwoye.edu.ng
#
# RStudio pathway
# Learning cycle: Read -> Predict -> Run -> Observe -> Explain -> Reflect

# 1. Warm-up
# Think about the difference between explicit rules and learning from historical examples.

# 2. Conventional programming versus machine learning
# Rules + Data -> Output
# Data + Examples/Targets -> Learned Model
# New Data + Learned Model -> Prediction

# 3. Machine-learning vocabulary
# Observation/instance: one individual example or record.
# Variable: a measurable or recorded property.
# Feature: an input variable used by a model.
# Target/label: the outcome a supervised model predicts.
# Dataset: collection of observations.
# Model: a representation learned from data.
# Training: learning model parameters from data.
# Prediction: model output for an observation.
# Generalization: performance on unseen data.

# 4. From a real problem to an ML problem
# For the loan example, identify the observation, features, target,
# task type, and an ethical/data-quality concern.

# 5. The Iris dataset
# Load the built-in Iris dataset.
data(iris)

# Inspect the first observations.
head(iris)

# Display the dimensions: 150 observations and 5 columns including Species.
dim(iris)

# Select the four numerical feature columns.
X <- iris[, 1:4]

# Select the target.
y <- iris$Species

# Display feature dimensions.
dim(X)

# Display the number of target observations.
length(y)

# Display feature names.
names(X)

# Display target classes.
levels(y)

# 6. Dataset representation
# For n observations and p features, X is an n x p matrix.
# For Iris, X has 150 rows and 4 feature columns.

# Extract the first observation as a feature vector.
first_observation <- as.numeric(X[1, ])

# Display the feature vector.
first_observation

# Count the number of features.
length(first_observation)

# 7. Classification
# Iris is a classification problem because Species is categorical.

# Count observations in each class.
table(y)

# Display class names.
levels(y)

# 8. Regression
# Regression predicts a numerical target such as price, rainfall,
# temperature, electricity demand, or examination score.

# 9. Unsupervised learning
# Unsupervised learning uses X without a supplied target y.
# Examples include clustering and dimensionality reduction.

# 10. Supervised learning mathematically
# D = {(x_i, y_i)} and the learned relationship can be written as
# y_hat = f_theta(x).

# 11. Prediction and loss
# Store the actual examination score.
actual <- 70

# Store Model A's prediction.
prediction_A <- 64

# Store Model B's prediction.
prediction_B <- 69

# Calculate Model A's squared error.
loss_A <- (actual - prediction_A)^2

# Calculate Model B's squared error.
loss_B <- (actual - prediction_B)^2

# Display both losses.
loss_A
loss_B

# 12. Empirical risk
# Average training loss can be written as:
# R_hat(theta) = (1/n) * sum L(f_theta(x_i), y_i)

# 13. Training versus generalization
# Good training performance does not automatically imply good
# performance on unseen observations.

# 14. Training, validation and test data
# Training data -> learn model
# Validation data -> tune/select
# Test data -> final evaluation

# 15. EDA before modelling
# Display dataset dimensions.
dim(iris)

# Count missing values in each column.
colSums(is.na(iris))

# Display summary statistics.
summary(iris)

# Create a scatter plot of sepal length against petal length.
plot(
  iris$Sepal.Length,
  iris$Petal.Length,
  xlab = "Sepal length (cm)",
  ylab = "Petal length (cm)",
  main = "Iris: Sepal Length vs Petal Length"
)

# Record at least two observations from the plot in your R Markdown work.

# 16. Data leakage
# Ask whether every feature would genuinely be available
# at the moment the prediction is made.
#
# Example: final graduation status should not be used as a feature
# when predicting graduation before graduation.

# 17. Responsible machine learning
# Consider:
# - who collected the data;
# - who is represented or missing;
# - whether the target is reliable;
# - whether features are available at prediction time;
# - what happens when the model is wrong.

# 18. Student-centred activity: ML Problem Detective
# For each scenario, identify:
# - one observation;
# - possible features X;
# - target y, if there is one;
# - classification, regression or unsupervised learning;
# - one data-quality, leakage or deployment concern.
#
# Scenario A: Fraud detection
# Scenario B: House prices
# Scenario C: Customer segmentation
# Scenario D: Yoruba emotion classification
# Scenario E: Rainfall prediction

# 19. Mathematical formulation task
# Choose one scenario and describe:
# x, y, y_hat, f_theta, and what counts as a useful prediction.

# 20. Iris mini-practical
# Task 1: state the number of observations, features and target classes.
# Task 2: print dimensions of X and length of y.
# Task 3: display one feature vector.
# Task 4: create a visualization involving two features.
# Task 5: write three EDA observations.
# Task 6: explain why Iris is classification.
# Task 7: explain the difference between a feature and a target.

# Your work starts here.

# Task 1


# Task 2


# Task 3


# Task 4


# Task 5


# Task 6


# Task 7


# 21. Class Task / Do It Yourself
# Choose a real problem from education, agriculture, healthcare, finance,
# transportation, language, music/culture, or environment.
# Do not start by choosing an algorithm.
# Start with the problem.

# Complete:
# 1. One observation
# 2. Possible features
# 3. Target, if any
# 4. Classification, regression or unsupervised learning
# 5. Mathematical abstraction: y_hat = f_theta(x)
# 6. Information unavailable at prediction time
# 7. Possible leakage source
# 8. Possible data-quality concern
# 9. Meaning of a wrong prediction

# 22. Reflection
# Answer the reflection questions in the R Markdown student guide.

# 23. Week 1 checklist
# Confirm that you can explain ML, distinguish task types,
# represent X and y, explain loss and generalization,
# identify leakage, and formulate a real-world ML problem.

# 24. Bridge to Week 2
# Week 2: Data Representation, Linear Transformations &
# Matrix-Vector Operations.
