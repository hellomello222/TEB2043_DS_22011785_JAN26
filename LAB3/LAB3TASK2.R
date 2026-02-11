student_records <- list(
  Robert = 59,
  Hemsworth = 71,
  Scarlett = 83,
  Evans = 68,
  Pratt = 65,
  Larson = 57,
  Holland = 62,
  Paul = 92,
  Simu = 92,
  Renner = 59
)

scores <- unlist(student_records)

highest_score <- max(scores)
lowest_score <- min(scores)
average_score <- mean(scores)

top_students <- names(scores)[which(scores == highest_score)]
bottom_students <- names(scores)[which(scores == lowest_score)]

cat("Highest Score:", highest_score, "\n")
cat("Lowest Score:", lowest_score, "\n")
cat("Average Score:", round(average_score, 2), "\n")
cat("Student(s) with highest score:", paste(top_students, collapse = ", "), "\n")
cat("Student with lowest score:", paste(bottom_students, collapse = ", "), "\n")
