# 1. Store the 20 records in a vector
scores <- c(33, 24, 54, 94, 16, 89, 60, 6, 77, 61, 13, 44, 26, 24, 73, 73, 90, 39, 90, 54)

# 2. Categorize the scores into grades using cut()
# Breaks are set slightly below/above the ranges to include boundary values correctly
grades <- cut(scores, 
              breaks = c(-Inf, 49, 59, 69, 79, 89, 100), 
              labels = c("F", "E", "D", "C", "B", "A"), 
              right = TRUE)

# 3. Count the number of students per grade
grade_counts <- table(grades)

# 4. Check if student passed (>49) - Returns TRUE or FALSE
pass_status <- scores > 49

# --- Display Results ---

cat("Grade Distribution:\n")
print(grade_counts)

cat("\nPass Status (TRUE = Pass, FALSE = Fail):\n")
# Creating a data frame for a cleaner view of individual results
results <- data.frame(Score = scores, Grade = grades, Passed = pass_status)
print(results)
