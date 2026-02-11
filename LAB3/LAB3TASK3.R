# 1. Original Chemistry scores (from Q2) and new Physics scores
chemistry <- c(59, 71, 83, 68, 65, 57, 62, 92, 92, 59)
physics <- c(89, 86, 65, 52, 60, 67, 40, 77, 90, 61)
student_names <- c("Robert", "Hemsworth", "Scarlett", "Evans", "Pratt", 
                   "Larson", "Holland", "Paul", "Simu", "Renner")

# 2. Append to a combined list or data frame
records <- data.frame(
  Name = student_names,
  Chemistry = chemistry,
  Physics = physics
)

# 3. Count failures (<= 49) for both subjects
# Using & ensures we find students who failed BOTH
fail_both <- sum(records$Chemistry <= 49 & records$Physics <= 49)

# 4. Identify students with the highest score in each subject
best_chem_score <- max(records$Chemistry)
best_phys_score <- max(records$Physics)

best_chem_students <- records$Name[records$Chemistry == best_chem_score]
best_phys_students <- records$Name[records$Physics == best_phys_score]

# --- Output Results ---
cat("Number of students who failed both Chemistry and Physics:", fail_both, "\n")
cat("Highest score in Chemistry:", best_chem_score, "(By:", paste(best_chem_students, collapse=", "), ")\n")
cat("Highest score in Physics:", best_phys_score, "(By:", paste(best_phys_students, collapse=", "), ")\n")
