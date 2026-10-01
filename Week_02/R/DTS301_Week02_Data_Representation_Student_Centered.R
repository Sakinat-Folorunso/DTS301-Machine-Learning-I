# ============================================================
# DTS 301 — Machine Learning I
# Week 2: Data Representation, Features, Feature Vectors &
#         Matrix–Vector Operations
#
# Instructor: Dr. Sakinat Folorunso
# Department of Computer Science
# Olabisi Onabanjo University (OOU)
# ============================================================

# ------------------------------------------------------------
# 1. From a real-world observation to data
# ------------------------------------------------------------

# Create one feature vector for Student A.
x <- c(6, 85, 68)

# Display the feature vector.
x

# Display the number of values in the feature vector.
length(x)


# ------------------------------------------------------------
# 2. Feature vectors — Iris example
# ------------------------------------------------------------

# Create a hypothetical Iris feature vector.
iris_x <- c(5.1, 3.5, 1.4, 0.2)

# Display the feature vector.
iris_x

# Count the number of features.
length(iris_x)


# ------------------------------------------------------------
# 3. Feature matrix
# ------------------------------------------------------------

# Create the feature matrix for three students.
X <- matrix(
  c(
    6, 85, 68,
    8, 92, 75,
    4, 70, 55
  ),
  nrow = 3,
  byrow = TRUE
)

# Display the feature matrix.
X

# Display the dimensions of the matrix.
dim(X)

# Display the number of observations.
nrow(X)

# Display the number of features.
ncol(X)


# ------------------------------------------------------------
# 4. Inspect rows and columns
# ------------------------------------------------------------

# Select Student A.
student_A <- X[1, ]

# Display Student A.
student_A

# Select study hours.
study_hours <- X[, 1]

# Display study hours.
study_hours

# Select attendance.
attendance <- X[, 2]

# Display attendance.
attendance


# Add meaningful column names.
colnames(X) <- c("Study_Hours", "Attendance", "Previous_Score")

# Display the labelled matrix.
X


# ------------------------------------------------------------
# 5. Vector operations
# ------------------------------------------------------------

# Create vector a.
a <- c(2, 4, 6)

# Create vector b.
b <- c(1, 3, 5)

# Add the vectors.
a + b

# Subtract b from a.
a - b

# Multiply a by a scalar.
2 * a

# Calculate the dot product.
sum(a * b)


# Predict and calculate another dot product.
u <- c(3, 2, 1)
v <- c(1, 2, 3)

# Calculate the dot product.
sum(u * v)


# ------------------------------------------------------------
# 6. Matrix–vector multiplication
# ------------------------------------------------------------

# Create matrix A.
A <- matrix(
  c(
    1, 2,
    3, 4
  ),
  nrow = 2,
  byrow = TRUE
)

# Create vector x.
x <- c(5, 6)

# Multiply A by x.
Ax <- A %*% x

# Display the result.
Ax

# Display the result dimensions.
dim(Ax)


# ------------------------------------------------------------
# 7. Matrix dimension compatibility
# ------------------------------------------------------------

# Create a 3 by 2 matrix.
M <- matrix(
  c(
    1, 2,
    3, 4,
    5, 6
  ),
  nrow = 3,
  byrow = TRUE
)

# Create a compatible two-element vector.
v2 <- c(10, 20)

# Perform matrix–vector multiplication.
result <- M %*% v2

# Display the result.
result

# Display the result dimensions.
dim(result)


# ------------------------------------------------------------
# 8. Linear transformation
# ------------------------------------------------------------

# Create a scaling matrix.
scale <- matrix(
  c(
    2, 0,
    0, 2
  ),
  nrow = 2,
  byrow = TRUE
)

# Create a two-dimensional point.
point <- c(2, 3)

# Apply the transformation.
transformed_point <- scale %*% point

# Display the original point.
point

# Display the transformed point.
transformed_point


# ------------------------------------------------------------
# 9. Simple feature transformation
# ------------------------------------------------------------

# Create a copy of the feature matrix.
X_scaled <- X

# Scale attendance to a 0–1 range.
X_scaled[, "Attendance"] <- X_scaled[, "Attendance"] / 100

# Scale previous score to a 0–1 range.
X_scaled[, "Previous_Score"] <- X_scaled[, "Previous_Score"] / 100

# Display the transformed matrix.
X_scaled


# ------------------------------------------------------------
# 10. Do It Yourself dataset
# ------------------------------------------------------------

# Create the four-student feature matrix.
X_task <- matrix(
  c(
    5, 80, 72, 65,
    8, 90, 85, 78,
    3, 65, 55, 50,
    7, 88, 80, 74
  ),
  nrow = 4,
  byrow = TRUE
)

# Give the columns meaningful names.
colnames(X_task) <- c(
  "Study_Hours",
  "Attendance",
  "Assignment",
  "Previous_Score"
)

# Display the feature matrix.
X_task

# Display its dimensions.
dim(X_task)


# Extract Student B.
student_B <- X_task[2, ]

# Display Student B.
student_B


# Extract attendance.
attendance_task <- X_task[, "Attendance"]

# Display attendance.
attendance_task


# Extract Student A.
student_A_task <- X_task[1, ]

# Extract Student B again.
student_B_task <- X_task[2, ]

# Calculate the dot product of Students A and B.
sum(student_A_task * student_B_task)


# Create a transformed copy.
X_task_scaled <- X_task

# Scale attendance.
X_task_scaled[, "Attendance"] <- X_task_scaled[, "Attendance"] / 100

# Scale assignment.
X_task_scaled[, "Assignment"] <- X_task_scaled[, "Assignment"] / 100

# Display the transformed matrix.
X_task_scaled


# ============================================================
# End of Week 2
# Bridge to Week 3:
# Classification, Regression, Problem Formulation & Probability
# ============================================================
